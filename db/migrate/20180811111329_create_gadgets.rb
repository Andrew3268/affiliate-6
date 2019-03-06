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
      t.string :gg_summary
      t.string :gg_from
      t.string :gg_bottomline
      t.string :gg_source_01
      t.string :gg_source_02
      t.string :gg_source_03
      t.string :gg_source_04
      t.string :gg_source_05
      t.string :gg_source_link_01
      t.string :gg_source_link_02
      t.string :gg_source_link_03
      t.string :gg_source_link_04
      t.string :gg_source_link_05
      t.text :gg_intro
      t.text :gg_pro_01
      t.text :gg_pro_02
      t.text :gg_pro_03
      t.text :gg_pro_04
      t.text :gg_pro_05
      t.text :gg_pro_06
      t.text :gg_pro_07
      t.text :gg_pro_08
      t.text :gg_pro_09
      t.text :gg_pro_10
      t.text :gg_con_01
      t.text :gg_con_02
      t.text :gg_con_03
      t.text :gg_con_04
      t.text :gg_con_05
      t.text :gg_con_06
      t.text :gg_con_07
      t.string :gg_option_01
      t.string :gg_option_02
      t.string :gg_option_03
      t.string :gg_option_04
      t.string :gg_option_05
      t.string :gg_option_06
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
