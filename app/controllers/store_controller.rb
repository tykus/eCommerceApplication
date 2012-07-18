class StoreController < ApplicationController
  def index
    # Agile Web Development with Rails 4th ed.
    #@products = Product.order(:product_name)
    #@products = StockItem.all(:order => 'product_id, size_id')
    @items = StockItem.where("pr.active='t'").joins("join products as pr on stock_items.product_id = pr.id")

   # @products = StockItem.where("quantity_in_stock >= 1").
  #      joins("join products on stock_items.product_id = products.id")
  end

end
