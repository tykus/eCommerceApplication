class StoreController < ApplicationController
  # Whitelist Store for public access
  skip_before_filter :is_admin

  def index
    # Gather all of the stock_items where the product is also active
    @products = Product.store_search(params[:gender_id])
  end

  def show
    # Return only active products
    @product = Product.where("active='t' AND id=?", params[:id]).first  # <<<< this is returning an object

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

  def thank_you
    # Thanks customer for order
    @order = current_user.orders.last
    @line_items = @order.line_items
  end

  def register
    # Customer registration
  end

end
