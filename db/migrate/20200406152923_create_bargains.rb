class CreateBargains < ActiveRecord::Migration
  def change
    create_table :bargains do |t|
      
      t.integer :user_id
      t.string :bar_title
      t.string :bar_image
      t.string :bar_link
      t.text :bar_detail

      t.string :bar_spare_01
      t.string :bar_spare_02
      t.string :bar_spare_03
      t.string :bar_spare_04
      t.string :bar_spare_05
      t.string :bar_spare_06
      t.string :bar_spare_07
      t.string :bar_spare_08
      t.string :bar_spare_09
      t.string :bar_spare_10
      t.string :bar_spare_11
      t.string :bar_spare_12
      t.string :bar_spare_13
      t.string :bar_spare_14
      t.string :bar_spare_15
      t.string :bar_spare_16
      t.string :bar_spare_17
      t.string :bar_spare_18
      t.string :bar_spare_19
      t.string :bar_spare_20
      t.string :bar_spare_21
      t.string :bar_spare_22
      t.string :bar_spare_23
      t.string :bar_spare_24
      t.string :bar_spare_25
      t.string :bar_spare_26
      t.string :bar_spare_27
      t.string :bar_spare_28
      t.string :bar_spare_29
      t.string :bar_spare_30

      t.text :bar_spare_31
      t.text :bar_spare_32
      t.text :bar_spare_33
      t.text :bar_spare_34
      t.text :bar_spare_35
      t.text :bar_spare_36
      t.text :bar_spare_37
      t.text :bar_spare_38
      t.text :bar_spare_39
      t.text :bar_spare_40

      t.float :bar_spare_41
      t.float :bar_spare_42
      t.float :bar_spare_43
      t.float :bar_spare_44
      t.float :bar_spare_45
      t.float :bar_spare_46
      t.float :bar_spare_47
      t.float :bar_spare_48
      t.float :bar_spare_49
      t.float :bar_spare_50
      t.float :bar_spare_51
      t.float :bar_spare_52
      t.float :bar_spare_53
      t.float :bar_spare_54
      t.float :bar_spare_55
      t.float :bar_spare_55

      t.integer :bar_spare_56
      t.integer :bar_spare_57
      t.integer :bar_spare_58
      t.integer :bar_spare_59
      t.integer :bar_spare_60

      t.decimal :bar_spare_61
      t.decimal :bar_spare_62
      t.decimal :bar_spare_63
      t.decimal :bar_spare_64
      t.decimal :bar_spare_65

      t.datetime :bar_spare_66
      t.datetime :bar_spare_67
      t.datetime :bar_spare_68
      t.datetime :bar_spare_69
      t.datetime :bar_spare_70

      t.date :bar_spare_71
      t.date :bar_spare_72
      t.date :bar_spare_73
      t.date :bar_spare_74
      t.date :bar_spare_75

      t.references :barcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
