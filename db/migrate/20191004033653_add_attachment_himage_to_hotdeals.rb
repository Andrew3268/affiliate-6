class AddAttachmentHimageToHotdeals < ActiveRecord::Migration
  def self.up
    change_table :hotdeals do |t|
      t.attachment :himage
    end
  end

  def self.down
    remove_attachment :hotdeals, :himage
  end
end
