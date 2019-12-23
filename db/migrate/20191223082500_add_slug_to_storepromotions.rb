class AddSlugToStorepromotions < ActiveRecord::Migration
  def change
    add_column :storepromotions, :slug, :string
    add_index :storepromotions, :slug, unique: true
  end
end
