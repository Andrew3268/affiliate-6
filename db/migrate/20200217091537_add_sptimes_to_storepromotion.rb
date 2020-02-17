class AddSptimesToStorepromotion < ActiveRecord::Migration
  def change
    add_column :storepromotions, :sp_spare_90, :datetime
    add_column :storepromotions, :sp_spare_91, :datetime
    add_column :storepromotions, :sp_spare_92, :datetime
    add_column :storepromotions, :sp_spare_93, :date
    add_column :storepromotions, :sp_spare_94, :date
    add_column :storepromotions, :sp_spare_95, :date
  end
end
