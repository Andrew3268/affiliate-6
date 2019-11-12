class CreateStoredeals < ActiveRecord::Migration
  def change
    create_table :storedeals do |t|
      
      t.integer :user_id
      t.string :sd_title
      t.text :sd_description
      t.string :sd_image
      t.string :sd_link
      t.string :sd_price
      t.string :sd_list_price
      t.string :sd_percentage
      t.string :sd_image_title
      t.string :sd_hashtag
      t.string :sd_coupon_deal
      t.string :sd_extra_deal
      t.string :sd_banner
      t.string :sd_keyword
      t.string :sd_promocode
      t.string :sd_end_date

      t.string :sd_spare_01
      t.string :sd_spare_02
      t.string :sd_spare_03
      t.string :sd_spare_04
      t.string :sd_spare_05
      t.string :sd_spare_06
      t.string :sd_spare_07
      t.string :sd_spare_08
      t.string :sd_spare_09
      t.string :sd_spare_10
      t.string :sd_spare_11
      t.string :sd_spare_12
      t.string :sd_spare_13
      t.string :sd_spare_14
      t.string :sd_spare_15
      t.string :sd_spare_16
      t.string :sd_spare_17
      t.string :sd_spare_18
      t.string :sd_spare_19
      t.string :sd_spare_20

      t.integer :sd_spare_21
      t.integer :sd_spare_22
      t.integer :sd_spare_23
      t.integer :sd_spare_24
      t.integer :sd_spare_25      
      t.integer :sd_spare_26
      t.integer :sd_spare_27
      t.integer :sd_spare_28
      t.integer :sd_spare_29

      t.float :sd_spare_30
      t.float :sd_spare_31
      t.float :sd_spare_32
      t.float :sd_spare_33
      t.float :sd_spare_34
      t.float :sd_spare_35
      t.float :sd_spare_36
      t.float :sd_spare_37
      t.float :sd_spare_38
      t.float :sd_spare_39

      t.decimal :sd_spare_41
      t.decimal :sd_spare_42
      t.decimal :sd_spare_43
      t.decimal :sd_spare_44
      t.decimal :sd_spare_45
      t.decimal :sd_spare_46
      t.decimal :sd_spare_47
      t.decimal :sd_spare_48
      t.decimal :sd_spare_49

      t.text :sd_spare_50
      t.text :sd_spare_51
      t.text :sd_spare_52
      t.text :sd_spare_53
      t.text :sd_spare_54

      t.date :sd_spare_61
      t.date :sd_spare_62
      t.date :sd_spare_63
      t.date :sd_spare_64
      t.datetime :sd_spare_65
      t.datetime :sd_spare_66
      t.datetime :sd_spare_67
      t.datetime :sd_spare_68
      
      t.references :sdcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
