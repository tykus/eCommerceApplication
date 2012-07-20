class StoreController < ApplicationController
  def index

    # Gather all of the stock_items where the product is also active
    @products = Product.store_search(params[:search_query])

    #@products = Product.where("active='t' AND stock_items.quantity_in_stock>0").joins("join stock_items on products.id = stock_items.product_id").uniq

    # Make current cart available
    @cart = current_cart
  end

  def show
    # Return only active products
    @product = Product.where("active='t' AND id=?", params[:id]).first  # <<<< this is returning an object

    if @product
      # Returns the stock_item_id's available for current product
      @stocks = @product.stock_items.where("quantity_in_stock > 0")

      # Make cart available
      @cart = current_cart

      # Put the instance variables into a hash to pass back to the show view per Rails inspector
      # @product is called at several locations throughout the show view, so it was not put in the hash
      @data = {
          "cart"=>@cart,
          "stocks"=>@stocks
      }

      respond_to do |format|
        format.html # show.html.erb
      end
    else
      # If a product object is not returned to @product, then redirect back to the store front
      redirect_to(store_url, :notice => 'Invalid product reference')
    end

  end


end
