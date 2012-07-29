#
# application_controller.rb
#
# Version 2
#
# 24/07/2012
#
# @author Brian O'Sullivan 11114835
# @author Ayotunde Odusanya
#
# @reference LaptopShop tutorial 2


class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :is_admin


  private

  # @author Brian O'Sullivan 11114835
  # @reference LaptopShop tutorial 2
  def current_cart
      #Cart.find(session[:cart_id])
      cart = Cart.find_by_user_id(current_user.id)
      unless cart
        cart = current_user.carts.create    # modified to record the user_id in the cart model.
      end
      session[:cart_id] = cart.id
      cart
  end

  helper_method :current_cart

  protected

# Returns the currently logged in user or nil if there isn't one
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end


# Make current_user available in templates as a helper
  helper_method :current_user



# Filter method to enforce a login requirement
# Apply as a before_filter on any controller you want to protect
  def authenticate
    logged_in? ? true : access_denied
  end



# Predicate method to test for a logged in user
  def logged_in?
    current_user.is_a? User
  end


# Make logged_in? available in templates as a helper
  helper_method :logged_in?



  def access_denied
    redirect_to login_path, :notice => "Please log in to continue"
    false
  end


   # @author: Brian O'Sullivan
   def is_admin
    unless current_user.admin
      redirect_to store_index_path
    end
  end

end
