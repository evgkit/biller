class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, :about, :address
      t.time :uploaded_at
      t.integer :balance
      t.timestamps :created_at, :updated_at, null: false
    end
  end
end
