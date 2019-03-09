class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|

      t.integer :user_id
      t.string :re_filter
      t.string :re_title
      t.string :re_intro
      t.text :sub_intro
      t.string :re_image

      t.string :sub_number_01
      t.string :sub_image_01
      t.string :sub_title_01
      t.text :sub_intro_01
      t.string :sub_source_01
      t.string :sub_price_01
      t.string :sub_link_01
      t.string :sub_youtube_01

      t.string :sub_number_02
      t.string :sub_image_02
      t.string :sub_title_02
      t.text :sub_intro_02
      t.string :sub_source_02
      t.string :sub_price_02
      t.string :sub_link_02
      t.string :sub_youtube_02

      t.string :sub_number_03
      t.string :sub_image_03
      t.string :sub_title_03
      t.text :sub_intro_03
      t.string :sub_source_03
      t.string :sub_price_03
      t.string :sub_link_03
      t.string :sub_youtube_03

      t.string :sub_number_04
      t.string :sub_image_04
      t.string :sub_title_04
      t.text :sub_intro_04
      t.string :sub_source_04
      t.string :sub_price_04
      t.string :sub_link_04
      t.string :sub_youtube_04

      t.string :sub_number_05
      t.string :sub_image_05
      t.string :sub_title_05
      t.text :sub_intro_05
      t.string :sub_source_05
      t.string :sub_price_05
      t.string :sub_link_05
      t.string :sub_youtube_05

      t.string :sub_number_06
      t.string :sub_image_06
      t.string :sub_title_06
      t.text :sub_intro_06
      t.string :sub_source_06
      t.string :sub_price_06
      t.string :sub_link_06
      t.string :sub_youtube_06

      t.string :sub_number_07
      t.string :sub_image_07
      t.string :sub_title_07
      t.text :sub_intro_07
      t.string :sub_source_07
      t.string :sub_price_07
      t.string :sub_link_07
      t.string :sub_youtube_07

      t.string :sub_number_08
      t.string :sub_image_08
      t.string :sub_title_08
      t.text :sub_intro_08
      t.string :sub_source_08
      t.string :sub_price_08
      t.string :sub_link_08
      t.string :sub_youtube_08

      t.string :sub_number_09
      t.string :sub_image_09
      t.string :sub_title_09
      t.text :sub_intro_09
      t.string :sub_source_09
      t.string :sub_price_09
      t.string :sub_link_09
      t.string :sub_youtube_09

      t.string :sub_number_10
      t.string :sub_image_10
      t.string :sub_title_10
      t.text :sub_intro_10
      t.string :sub_source_10
      t.string :sub_price_10
      t.string :sub_link_10
      t.string :sub_youtube_10

      t.timestamps null: false
    end
  end
end
