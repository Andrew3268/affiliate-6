class AddImpressionsCountToHotdeal < ActiveRecord::Migration
  def change
    add_column :hotdeals, :impressions_count, :int
  end
end
