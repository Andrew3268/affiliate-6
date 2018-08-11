class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|

      t.string :gg_title
      t.string :gg_url
      t.string :gg_img
      t.string :gg_youtube01
      t.string :gg_youtube02
      t.string :gg_bprice
      t.string :gg_aprice
      t.string :gg_sales
      t.string :gg_source
      t.string :gg_option_01
      t.string :gg_option_02
      t.string :gg_option_03
      t.string :gg_option_04
      t.string :gg_option_05
      t.string :gg_option_06
      t.text :gg_intro
      t.string :gg_spare_01
      t.string :gg_spare_02
      t.string :gg_spare_03
      t.string :gg_spare_04
      t.string :gg_spare_05
      t.text :gg_spare_06
      t.text :gg_spare_07
      t.text :gg_spare_08


      t.timestamps null: false
    end
  end
end
