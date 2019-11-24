class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :store
      t.text :product

      t.timestamps
    end
  end
end
