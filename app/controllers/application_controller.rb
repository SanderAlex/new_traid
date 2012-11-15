class ApplicationController < ActionController::Base

  protect_from_forgery
  include ProductsHelper
  include AjaxHelper

end
