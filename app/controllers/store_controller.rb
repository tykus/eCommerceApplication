#
# store_controller.rb
#
# Version 1
#
# 26/07/2012
#
# @author Brian O'Sullivan 11114835
#
# @reference Agile Web Development with Rails 4th ed.
#

class StoreController < ApplicationController
  # Whitelist Store for public access
  skip_before_filter :is_admin


  # @author Brian O'Sullivan 11114835
  def index
    @products = Product.with_query(params[:search_query]).
                        with_gender(params[:gender]).
                        with_category(params[:category]).
                        in_size(params[:size]).
                        is_active
  end

  def show
    # Return only active products
    @product = Product.where("active=? AND id=?", true, params[:id]).first  # <<<< this is returning an object

    # Form for new line_item
    @line_item = LineItem.new

    if @product
      # Returns the stock_item_id's available for current product
      @stocks = @product.stock_items.stock_available

      respond_to do |format|
        format.html # show.html.erb
      end
    else
      # If a product object is not returned to @product, then redirect back to the store front
      redirect_to(store_url, :notice => 'Invalid product reference')
    end

  end

  def category_view
    @categories = Category.all
  end

  # @author Brian O'Sullivan 11114835
  def thank_you
    # Thanks customer for order
    @order = current_user.orders.last
    @line_items = @order.line_items
  end

  def register
    # Customer registration
  end

end
