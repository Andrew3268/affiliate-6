class AddColumnToPromocodes < ActiveRecord::Migration
  def change
    add_column :promocodes, :p_spare_50, :datetime
    add_column :promocodes, :p_spare_51, :datetime
    add_column :promocodes, :p_spare_52, :date
    add_column :promocodes, :p_spare_53, :date
  end
end
