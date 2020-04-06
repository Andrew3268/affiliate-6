class CreateBarcategories < ActiveRecord::Migration
  def change
    create_table :barcategories do |t|
      t.string :name
      t.text :description
      t.boolean :display_in_navbar, default: true

      t.timestamps null: false
    end
  end
end
