class LineItem < ActiveRecord::Base
  belongs_to :stock_item
  belongs_to :cart
  belongs_to :order
end
