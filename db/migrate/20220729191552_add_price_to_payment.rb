class AddPriceToPayment < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :price, :float, null: false
  end
end
