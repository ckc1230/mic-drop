class AddAttachmentImageToMicrophones < ActiveRecord::Migration
  def self.up
    change_table :microphones do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :microphones, :image
  end
end
