class PagesController < ApplicationController

http_basic_authenticate_with :name => "admin", :password => "admin", :only => [:admin]

  def about
    @title = "О компании"
    @product = Product.find_by_id("0")
  end

  def sert
    @title = "Сертификаты"
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

  def lic
    @title = "Лицензия"
    @product = Product.find_by_id("0")
  end

  def back
    @title = "Обратная связь"
    @product = Product.find_by_id("0")
  end

  def dop
    @title = "Дополнительная информация"
    @product = Product.find_by_id("0")
  end

  def faq
    @title = "FAQ"
    @product = Product.find_by_id("0")
  end

  def admin
    @title ="admin"
    @product = Product.find_by_id("0")
  end
end
