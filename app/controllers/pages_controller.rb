class PagesController < ApplicationController
  def about
    @title = "About"
  end

  def sert
    @title = "Certificates"
  end

  def payment
    @title = "Delivery and Payment"
  end

  def contact
    @title = "Contacts"
  end

  def map
    @title = "Sitemap"
  end
end
