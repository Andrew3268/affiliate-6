class CreateStoredealsTags < ActiveRecord::Migration
  def change
    create_table :storedeals_tags, :id => false do |t|
      t.references :storedeal, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
    end
  end
end
