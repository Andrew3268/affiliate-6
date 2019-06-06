class AddSubcategoryIdToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :subcategory_id, :integer
  end
end
