class CreateVideoposts < ActiveRecord::Migration[5.0]
  def change
    create_table :videoposts do |t|
      t.text :title
      t.text :read
      t.text :content
      t.integer :videogenre_id

      t.timestamps
    end
  end
end

# ここにURLと画像？？を加える