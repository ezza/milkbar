class Deposit < ActiveRecord::Base
  def details
    "Deposited $#{value.to_f/100}"
  end
end
