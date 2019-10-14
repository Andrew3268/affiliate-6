class AddAttachmentPimageToPromocodes < ActiveRecord::Migration
  def self.up
    change_table :promocodes do |t|
      t.attachment :pimage
    end
  end

  def self.down
    remove_attachment :promocodes, :pimage
  end
end
