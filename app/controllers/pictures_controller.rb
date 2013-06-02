class PicturesController < ApplicationController
require "erb"
include ERB::Util

	def show
  		@product = Product.find_by_id("0")
	end
	
  	def upload
  		@product = Product.find_by_id("0")
  	end

	def create_assets
		picture = Picture.new
  		picture.image = params[:uploaded_data]
 		picture.save!

 		render :text => picture.image.url
    end
end
