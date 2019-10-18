class AddImpressionsCountToPromocode < ActiveRecord::Migration
  def change
    add_column :promocodes, :impressions_count, :int
  end
end
