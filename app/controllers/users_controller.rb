#
#   user_controller.rb
#
#   Version 1
#
#   26/07/2012
#
#   @author Brian O'Sullivan 11114835
#   @reference LaptopShop Tutorial - Part 2


class UsersController < ApplicationController
  skip_before_filter :is_admin, :except => 'index'

  # @reference LaptopShop Tutorial - Part 2
  def new
    @user = User.new
  end

  # @reference LaptopShop Tutorial - Part 2
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to store_index_path, :notice => 'User account created, please log in to continue!'
    else
      render :action => 'new'
    end
  end

  # @author Brian O'Sullivan 11114835
  def index
    @users = User.all(:order => 'admin DESC')
  end


  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end


end


