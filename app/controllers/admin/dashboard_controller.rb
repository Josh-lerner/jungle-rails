class Admin::DashboardController < ApplicationController
   before_filter :authorize

   http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD'], except: :index
  
   def show
    @products_count = Product.count(:all)
    @categories_count = Category.count(:all)
   end
end
