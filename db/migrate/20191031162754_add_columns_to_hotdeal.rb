class AddColumnsToHotdeal < ActiveRecord::Migration
  def change
    add_column :hotdeals, :h_spare_31, :integer
    add_column :hotdeals, :h_spare_32, :integer
    add_column :hotdeals, :h_spare_33, :integer
    add_column :hotdeals, :h_spare_34, :integer
    add_column :hotdeals, :h_spare_35, :integer
    add_column :hotdeals, :h_spare_41, :float
    add_column :hotdeals, :h_spare_42, :float
    add_column :hotdeals, :h_spare_43, :float
    add_column :hotdeals, :h_spare_44, :float
    add_column :hotdeals, :h_spare_45, :float
    add_column :hotdeals, :h_spare_51, :decimal
    add_column :hotdeals, :h_spare_52, :decimal
    add_column :hotdeals, :h_spare_53, :decimal
    add_column :hotdeals, :h_spare_54, :decimal
    add_column :hotdeals, :h_spare_55, :decimal
  end
end
