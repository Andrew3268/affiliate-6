class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :mtitle
      t.string :mmail
      t.text :mcontent

      t.string :m_spare_01
      t.string :m_spare_02
      t.string :m_spare_03
      t.string :m_spare_04
      t.string :m_spare_05
      t.string :m_spare_06
      t.string :m_spare_07
      t.string :m_spare_08
      t.string :m_spare_09
      t.string :m_spare_10
      t.text :m_spare_11
      t.text :m_spare_12
      t.text :m_spare_13
      t.text :m_spare_14
      t.text :m_spare_15

      t.timestamps null: false
    end
  end
end
