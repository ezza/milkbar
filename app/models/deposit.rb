class Deposit < ActiveRecord::Base
  def details
    "Deposited #{value}"
  end
end
