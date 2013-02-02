class ProductsController < ApplicationController

http_basic_authenticate_with :name => "admin", :password => "admin", :except => [:show, :search]

	def index
		@products = Product.all
		@product = Product.find_by_id("0")
	end

	def bd
		@products = Product.all
		@product = Product.find_by_id("0")
	end

	def pg
		@products = Product.all
		@product = Product.find_by_id("0")
	end

	def show
		@title = Product.find(params[:id]).name
		@product = Product.find(params[:id])
	end

	def search
		@title = "Поиск"
  		@products = Product.search(params[:search])
  		@product = Product.find_by_id("0")
	end

	def new
		@product = Product.new
	end

	def edit
    	@product = Product.find(params[:id])
    end

	def create
        @product = Product.new(params[:product])
        respond_to do |format|
			if @product.save
				format.html { redirect_to products_url }	
				format.json { render :json => @product,
					:status => :created, :location => @product }
			else
				format.html { render :action => "new" }
				format.json { render :json => @product.errors,
					:status => :unprocessable_entity }
			end
		end
    end

    def update
        @product = Product.find(params[:id])
        respond_to do |format|
			if @product.update_attributes(params[:product])
				format.html { redirect_to(@product,
					:notice => 'Product was successfully updated.') }
				format.json { head :no_content }
			else
				format.html { render :action => "edit" }
				format.json { render :json => @product.errors,
					:status => :unprocessable_entity }
			end
		end
    end

    def destroy
		@product = Product.find(params[:id])
		@product.destroy
			respond_to do |format|
				format.html { redirect_to products_url }
				format.json { head :no_content }
			end
	end

	def self.find_published_products
    	find(:all, :conditions => ["published = ?", true])
  	end
end