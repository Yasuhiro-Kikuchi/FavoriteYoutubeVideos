class CreateVideoconfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :videoconfigs do |t|
      t.text :title
      t.text :subtitle
      t.text :stylename

      t.timestamps
    end
  end
end
