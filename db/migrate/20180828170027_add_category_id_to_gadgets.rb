class AddCategoryIdToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :category_id, :integer
  end
end
