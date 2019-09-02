class AddSlugToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :slug, :string
    add_index :gadgets, :slug, unique: true
  end
end
