class Purchase < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer
  
  def details
    "Bought #{product.name} for $#{product.price.to_f/100}"
  end
end
