class AddTimesToHotdeals < ActiveRecord::Migration
  def change
    add_column :hotdeals, :h_spare_90, :datetime
    add_column :hotdeals, :h_spare_91, :datetime
    add_column :hotdeals, :h_spare_92, :date
    add_column :hotdeals, :h_spare_93, :date
  end
end
