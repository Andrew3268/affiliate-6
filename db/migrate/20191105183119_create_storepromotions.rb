class CreateStorepromotions < ActiveRecord::Migration
  def change
    create_table :storepromotions do |t|
      t.integer :user_id
      t.string :sp_title
      t.string :sp_store_name
      t.string :sp_image
      t.string :sp_promocode
      t.string :sp_end_date
      t.string :sp_link
      t.float :sp_percentage_01
      t.float :sp_percentage_02
      t.text :sp_description
      t.references :spcategory, index: true, foreign_key: true
      t.string :sp_spare_01
      t.string :sp_spare_02
      t.string :sp_spare_03
      t.string :sp_spare_04
      t.string :sp_spare_05
      t.string :sp_spare_06
      t.string :sp_spare_07
      t.string :sp_spare_08
      t.string :sp_spare_09
      t.string :sp_spare_10
      t.string :sp_spare_11
      t.string :sp_spare_12
      t.string :sp_spare_13
      t.string :sp_spare_14
      t.string :sp_spare_15
      t.string :sp_spare_16
      t.string :sp_spare_17
      t.string :sp_spare_18
      t.string :sp_spare_19
      t.string :sp_spare_20
      t.text :sp_spare_21
      t.text :sp_spare_22
      t.text :sp_spare_23
      t.text :sp_spare_24
      t.text :sp_spare_25
      t.integer :sp_spare_30
      t.integer :sp_spare_31
      t.integer :sp_spare_32
      t.integer :sp_spare_33
      t.integer :sp_spare_34
      t.integer :sp_spare_35
      t.integer :sp_spare_36
      t.integer :sp_spare_37
      t.integer :sp_spare_38
      t.integer :sp_spare_39
      t.float :sp_spare_40
      t.float :sp_spare_41
      t.float :sp_spare_42
      t.float :sp_spare_43
      t.float :sp_spare_44
      t.float :sp_spare_45
      t.float :sp_spare_46
      t.float :sp_spare_47
      t.float :sp_spare_48
      t.float :sp_spare_49
      t.decimal :sp_spare_50
      t.decimal :sp_spare_51
      t.decimal :sp_spare_52
      t.decimal :sp_spare_53
      t.decimal :sp_spare_54
      t.decimal :sp_spare_55
      t.decimal :sp_spare_56
      t.decimal :sp_spare_57
      t.decimal :sp_spare_58
      t.decimal :sp_spare_59
      t.datetime :sp_spare_60
      t.datetime :sp_spare_61
      t.date :sp_spare_62
      t.date :sp_spare_63
      
      t.timestamps null: false
    end
  end
end
