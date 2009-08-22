class DashboardController < ApplicationController

  def index 
    @products = Product.all(:order => :name)
  end
  
  def purchase_product
    product = Product.find params[:id]
    @logged_in_user.purchases.create!(:product_id => product.id, :value => product.price)
    redirect_to '/'
  end
  
  def deposit
    @logged_in_user.deposits.create!(:value => (params[:value].to_i))
    redirect_to '/'
  end

end