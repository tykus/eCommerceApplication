#
# gender.rb
#
# Version 2
#
# 27/07/2012
#
# @author Brian O'Sullivan 11114835
#


class Gender < ActiveRecord::Base
  # A gender type can be associated with many products
  has_many :products

  # This scope makes boy/girl available to dropdown in search window
  scope :either, :conditions => ["id IN (1,2)"]

end