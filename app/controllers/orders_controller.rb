#
# orders_controller.rb
#
# Version 1
#
# 26/07/2012
#
# @author Brian O'Sullivan 11114835
#
# @reference Agile Web Development with Rails 4th ed. pp153-165
# @reference http://railscasts.com/episodes/206-action-mailer-in-rails-3
#

class OrdersController < ApplicationController
   skip_before_filter :is_admin, :except => [:update, :destroy]

   layout "store"

  # GET /orders
  # GET /orders.xml
  def index
    if current_user.admin
      @orders = Order.find(:all)
    else
      @orders = current_user.orders.find(:all)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders }
    end
  end

  # @author Brian O'Sullivan 11114835
  def show
    if current_user.admin?
      # Admin user can see any order
      @order = Order.find(params[:id])
    else
      # Only return order if associated with the current user
      @order = current_user.orders.find(params[:id])
    end

    # Fetch the line_items associated with the order returned
    @line_items = @order.line_items

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # @reference Agile Web Development with Rails 4th ed. pp154-5
  def new
    if current_cart.line_items.empty?
      redirect_to store_url, :notice => "Your cart is empty"
      return
    end

    # Get the line_items in the current cart to display on checkout page
    @line_items = current_cart.line_items

    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # @author Brian O'Sullivan 11114835
  # @reference http://railscasts.com/episodes/206-action-mailer-in-rails-3
  def create
    @order = current_user.orders.new(params[:order])
    @order.add_line_items_from_cart(current_cart)

    respond_to do |format|
      if @order.save

        # Send an email to the user to confirm the order
        UserMailer.order_confirmation(current_user, @order).deliver

        # Remove the items purchased from the stock_items
        @order.line_items.each do |line_item|
          StockItem.pick!(line_item)
        end


        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to(:controller => 'store', :action => 'thank_you') }
        format.xml  { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'Order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end
end
