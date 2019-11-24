class CreateOrderSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_systems do |t|
      t.string :store
      t.string :product

      t.timestamps
    end
  end
end
