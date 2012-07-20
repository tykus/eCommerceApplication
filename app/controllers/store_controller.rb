class StoreController < ApplicationController
  def index

    # Gather all of the stock_items where the product is also active
    @products = Product.where("active='t' AND stock_items.quantity_in_stock>0").joins("join stock_items on products.id = stock_items.product_id").uniq
    # Make cart available
    @cart = current_cart
  end

  def show
    @product = Product.find(params[:id])                                      # <<<<<< add in here to limit to showing only active products which are in stock


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
  end

end
