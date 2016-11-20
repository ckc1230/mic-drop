class AddAttachmentAudioToShootoutMicrophones < ActiveRecord::Migration
  def self.up
    change_table :shootout_microphones do |t|
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :shootout_microphones, :audio
  end
end
