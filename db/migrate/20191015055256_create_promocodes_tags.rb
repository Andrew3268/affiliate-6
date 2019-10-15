class CreatePromocodesTags < ActiveRecord::Migration
  def change
    create_table :promocodes_tags, :id => false do |t|
      t.references :promocode, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
    end
  end
end
