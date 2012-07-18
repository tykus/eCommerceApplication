class StockItemsController < ApplicationController
  # GET /stock_items
  # GET /stock_items.xml
  def index
    @stock_items = StockItem.all(:order => 'product_id, size_id')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stock_items }
    end
  end

  # GET /stock_items/1
  # GET /stock_items/1.xml
  def show
    @stock_item = StockItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stock_item }
    end
  end

  # GET /stock_items/new
  # GET /stock_items/new.xml
  def new
    @stock_item = StockItem.new

    # Make available size data to associate with stock_item via dropdown menu in form
    @sizes = Size.all
    # Make available product data to associate with stock_item via dropdown menu in form
    @products = Product.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stock_item }
    end
  end

  # GET /stock_items/1/edit
  def edit

    @stock_item = StockItem.find(params[:id])

    # Make available size data to associate with stock_item via dropdown menu in form
    @sizes = Size.all
    # Make available product data to associate with stock_item via dropdown menu in form
    @products = Product.all


  end

  # POST /stock_items
  # POST /stock_items.xml
  def create
    @stock_item = StockItem.new(params[:stock_item])
    @stock_item
    respond_to do |format|
      if @stock_item.save
        format.html { redirect_to(stock_items_url, :notice => 'Stock item was successfully created.') }
        format.xml  { render :xml => @stock_item, :status => :created, :location => @stock_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stock_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stock_items/1
  # PUT /stock_items/1.xml
  def update
    @stock_item = StockItem.find(params[:id])

    respond_to do |format|
      if @stock_item.update_attributes(params[:stock_item])
        format.html { redirect_to(stock_items_url, :notice => 'Stock item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stock_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_items/1
  # DELETE /stock_items/1.xml
  def destroy
    @stock_item = StockItem.find(params[:id])
    @stock_item.destroy

    respond_to do |format|
      format.html { redirect_to(stock_items_url) }
      format.xml  { head :ok }
    end
  end


end
