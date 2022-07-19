class AddProcessingDate < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :processing_date, :datetime, null: false
  end
end
