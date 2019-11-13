class AddImpressionsCountToStoredeal < ActiveRecord::Migration
  def change
    add_column :storedeals, :impressions_count, :int
  end
end
