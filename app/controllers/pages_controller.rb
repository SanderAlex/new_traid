class PagesController < ApplicationController

  def about
    @title = "Модульные котельные | Водонагреватели, электрические блочные и модульные котельные - производство и поставка в любой регион"
    @product = Product.find_by_id("0")
  end

  def doc
    @title = "Документация"
    @product = Product.find_by_id("0")
  end

  def payment
    @title = "Доставка и оплата"
    @product = Product.find_by_id("0")
  end

  def contact
    @title = "Контакты"
    @product = Product.find_by_id("0")
  end

  def map
    @title = "Карта сайта"
    @product = Product.find_by_id("0")
  end

  def admin
    @title ="admin"
    @product = Product.find_by_id("0")
  end

  def self.find_published_pages
    find(:all, :conditions => ["published = ?", true])
  end
end
