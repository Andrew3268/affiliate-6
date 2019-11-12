class CreateSdcategories < ActiveRecord::Migration
  def change
    create_table :sdcategories do |t|
      t.integer :user_id
      t.string :name
      t.string :sdcategoriy_num
      t.text :description
      t.boolean :display_in_navbar, default: true

      t.timestamps null: false
    end
  end
end
