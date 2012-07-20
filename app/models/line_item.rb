class LineItem < ActiveRecord::Base
  belongs_to :stock_item
  belongs_to :cart
end
