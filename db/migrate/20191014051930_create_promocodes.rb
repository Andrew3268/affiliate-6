class CreatePromocodes < ActiveRecord::Migration
  def change
    create_table :promocodes do |t|

      t.integer :user_id
      t.string :p_title
      t.text :p_description
      t.string :p_image
      t.string :p_link
      t.string :p_price
      t.string :p_list_price
      t.string :p_percentage
      t.string :p_image_title
      t.string :p_hashtag
      t.string :p_coupon_deal
      t.string :p_extra_deal
      t.string :p_banner
      t.string :p_keyword
      t.string :p_promocode
      t.string :p_end_date

      t.string :p_spare_01
      t.string :p_spare_02
      t.string :p_spare_03
      t.string :p_spare_04
      t.string :p_spare_05
      t.string :p_spare_06
      t.string :p_spare_07
      t.string :p_spare_08
      t.string :p_spare_09
      t.string :p_spare_10
      t.string :p_spare_11
      t.string :p_spare_12
      t.string :p_spare_13
      t.string :p_spare_14
      t.string :p_spare_15
      t.string :p_spare_16
      t.string :p_spare_17
      t.string :p_spare_18
      t.string :p_spare_19
      t.string :p_spare_20
      t.integer :p_spare_21
      t.integer :p_spare_22
      t.integer :p_spare_23
      t.integer :p_spare_24
      t.integer :p_spare_25
      t.float :p_spare_26
      t.float :p_spare_27
      t.float :p_spare_28
      t.float :p_spare_29
      t.float :p_spare_30
      t.decimal :p_spare_31
      t.decimal :p_spare_32
      t.decimal :p_spare_33
      t.decimal :p_spare_34
      t.decimal :p_spare_35

      t.text :p_spare_36
      t.text :p_spare_37
      t.text :p_spare_38
      t.text :p_spare_39
      t.text :p_spare_40


      t.timestamps null: false
    end
  end
end
