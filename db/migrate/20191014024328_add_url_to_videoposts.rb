class AddUrlToVideoposts < ActiveRecord::Migration[5.0]
  def change
    add_column :videoposts, :url, :string
  end
end
