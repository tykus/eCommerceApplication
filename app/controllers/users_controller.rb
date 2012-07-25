class UsersController < ApplicationController
  skip_before_filter :is_admin, :except => 'index'


  #
  # @reference: laptop_shop tutorial 2
  #

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to store_index_path, :notice => 'User creation successful!'
    else
      render :action => 'new'
    end
  end



  def index
    @users = User.all
  end


  def show
    @user = current_user
  end


end


