class AddSlugToPromocodes < ActiveRecord::Migration
  def change
    add_column :promocodes, :slug, :string
    add_index :promocodes, :slug, unique: true
  end
end
