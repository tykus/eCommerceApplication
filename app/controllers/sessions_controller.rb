#
# sessions_controller.rb
#
# Version 1
#
# 25/07/2012
#
# @author Ayotunde Odusanya
#
# @reference LaptopShop Tutorial
#

class SessionsController < ApplicationController
  # Whitelist Sessions for public access
  skip_before_filter :is_admin

  # Specify that the cart show render to the 'store' layout
  # @reference: http://jonathanhui.com/ruby-rails-3-view
  layout "store"

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      if user.admin
        redirect_to products_path
      else
        redirect_to store_index_path, :notice => "Logged in successfully"
      end
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :controller => 'session', :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to store_index_path, :notice => "You successfully logged out"
  end
end
