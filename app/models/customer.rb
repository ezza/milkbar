class Customer < ActiveRecord::Base
  has_many :deposits
  has_many :purchases
  
  def balance
    deposits.sum('value') - purchases.sum('value')
  end
  
  def can_purchase(product)
    product.price <= balance
  end

  def actions
    actions = purchases + deposits
    actions = actions.sort_by {|action| action.created_at}
    actions.reverse
  end

  def self.authenticate(name, password)
    identity = self.find_by_name(name)
    if identity 
#      expected_password = encrypted_password(password, identity.salt) 
      if identity.password != password
        identity = nil
      end
    end
    identity
  end
  
end
