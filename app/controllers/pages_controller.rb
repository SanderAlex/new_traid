class PagesController < ApplicationController

  def about
    @title = "Модульные котельные"
    @product = Product.find_by_id("0")
    @page_id = "about"
  end

  def doc
    @title = "Документация"
    @product = Product.find_by_id("0")
    @page_id = "sert"    
  end

  def payment
    @title = "Доставка и оплата"
    @product = Product.find_by_id("0")
    @page_id = "pay"
  end

  def contact
    @title = "Контакты"
    @product = Product.find_by_id("0")
    @page_id = "cont"
  end

  def map
    @title = "Карта сайта"
    @product = Product.find_by_id("0")
    @page_id = "map"
  end

  def admin
    @title ="admin"
    @product = Product.find_by_id("0")
    @page_id = "ind"
  end

  def self.find_published_pages
    find(:all, :conditions => ["published = ?", true])
  end
end
