class AddSlugToHotdeals < ActiveRecord::Migration
  def change
    add_column :hotdeals, :slug, :string
    add_index :hotdeals, :slug, unique: true
  end
end
