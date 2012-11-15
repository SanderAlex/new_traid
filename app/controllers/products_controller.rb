class ProductsController < ApplicationController
	def show
		@product = Product.find(params[:id])
	end

	def search
  		@products = Product.search(params[:search])
  		@product = Product.find_by_id("0")
	end
end