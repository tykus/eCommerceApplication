#
# products_controller.rb
#
# Version 2
#
# 27/07/2012
#
# @author Brian O'Sullivan 11114835
#
# @reference LaptopShop Tutorial - Part 1
#

class ProductsController < ApplicationController

  # GET /products
  # GET /products.xml

  def index
    @products = Product.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new

    # Make available a collection of category object for collection_select form field
    @categories = Category.all
    # Make available a collection of gender object for collection_select form field
    @genders = Gender.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # @author Brian O'Sullivan 11114835
  def edit
    @product = Product.find(params[:id])
    # Make available a collection of category object for collection_select form field
    @categories = Category.all
    # Make available a collection of gender object for collection_select form field
    @genders = Gender.all
  end

  # @author Brian O'Sullivan 11114835
  def create
    @categories = Category.all
    @genders = Gender.all

    @product = current_user.products.new(params[:product])
    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

end
