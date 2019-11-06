class CreateSpcategories < ActiveRecord::Migration
  def change
    create_table :spcategories do |t|
      t.integer :user_id
      t.string :name
      t.string :spc_category_num
      t.text :spc_description
      t.boolean :display_in_navbar, default: true

      t.timestamps null: false
    end
  end
end
