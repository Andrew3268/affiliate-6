class AddSlugToStoredeals < ActiveRecord::Migration
  def change
    add_column :storedeals, :slug, :string
    add_index :storedeals, :slug, unique: true
  end
end
