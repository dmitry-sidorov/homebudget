class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :payments, foreign_key: true
    add_reference :categories, :payments, foreign_key: true
    add_reference :payments, :categories, foreign_key: true
    add_reference :payments, :user, foreign_key: true
  end
end
