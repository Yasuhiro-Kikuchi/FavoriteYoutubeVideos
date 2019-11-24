class CreateSampleOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :sample_orders do |t|
      t.text :store
      t.text :product
      t.integer :quantity

      t.timestamps
    end
  end
end
