class CreateHotdealsTags < ActiveRecord::Migration
  def change
    create_table :hotdeals_tags, :id => false do |t|
      t.references :hotdeal, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
    end
  end
end
