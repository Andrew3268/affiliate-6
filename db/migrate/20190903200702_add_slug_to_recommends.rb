class AddSlugToRecommends < ActiveRecord::Migration
  def change
    add_column :recommends, :slug, :string
    add_index :recommends, :slug, unique: true
  end
end
