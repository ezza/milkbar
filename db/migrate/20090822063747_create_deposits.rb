class CreateDeposits < ActiveRecord::Migration
  def self.up
    create_table :deposits do |t|
      t.integer :customer_id
      t.integer :value
      t.timestamps
    end
  end

  def self.down
    drop_table :deposits
  end
end
