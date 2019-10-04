class CreateHotdeals < ActiveRecord::Migration
  def change
    create_table :hotdeals do |t|

      t.integer :user_id
      t.string :h_title
      t.text :h_description
      t.string :h_image
      t.string :h_link
      t.string :h_price
      t.string :h_list_price
      t.string :h_percentage
      t.string :h_keyword

      t.string :h_spare_01
      t.string :h_spare_02
      t.string :h_spare_03
      t.string :h_spare_04
      t.string :h_spare_05
      t.string :h_spare_06
      t.string :h_spare_07
      t.string :h_spare_08
      t.string :h_spare_09
      t.string :h_spare_10
      t.string :h_spare_11
      t.string :h_spare_12
      t.string :h_spare_13
      t.string :h_spare_14
      t.string :h_spare_15
      t.string :h_spare_16
      t.string :h_spare_17
      t.string :h_spare_18
      t.string :h_spare_18
      t.string :h_spare_20
      t.text :h_spare_21
      t.text :h_spare_22
      t.text :h_spare_23
      t.text :h_spare_24
      t.text :h_spare_25
      t.text :h_spare_26
      t.text :h_spare_27
      t.text :h_spare_28
      t.text :h_spare_29
      t.text :h_spare_30

      t.timestamps null: false
    end
  end
end
