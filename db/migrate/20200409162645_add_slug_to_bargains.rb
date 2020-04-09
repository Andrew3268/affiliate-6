class AddSlugToBargains < ActiveRecord::Migration
  def change
    add_column :bargains, :slug, :string
    add_index :bargains, :slug, unique: true
  end
end
