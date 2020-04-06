class CreateBargains < ActiveRecord::Migration
  def change
    create_table :bargains do |t|
      t.string :title
      t.text :body
      t.references :barcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
