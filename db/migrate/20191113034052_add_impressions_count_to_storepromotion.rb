class AddImpressionsCountToStorepromotion < ActiveRecord::Migration
  def change
    add_column :storepromotions, :impressions_count, :int
  end
end
