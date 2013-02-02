class SitemapController < ApplicationController
  def show
    # grab info about all the photos since they each have their own page
    @products = Product.all

    # grab info about the most recently-updated link as they share a page

  end
end