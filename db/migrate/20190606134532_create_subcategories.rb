class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :subname

      t.timestamps null: false
    end
  end
end
