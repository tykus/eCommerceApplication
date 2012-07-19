class StoreController < ApplicationController
  def index

    # Gather all of the stock_items where the product is also active
    # Proper SQL instruction:
    # SELECT * FROM products WHERE products.id IN (SELECT DISTINCT(product_id) FROM stock_items WHERE quantity_in_stock>0))
    # could not be reproduced in Rails
    @products = Product.where("active='t' AND stock_items.quantity_in_stock>0").joins("join stock_items on products.id = stock_items.product_id").uniq

  end

  def show
    @product = Product.find(params[:id])                                      # <<<<<< add in here to limit to showing only active products which are in stock


    # Returns the actual stock_items available for current product
    @stocks = @product.stock_items.where("quantity_in_stock > 0")


    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
