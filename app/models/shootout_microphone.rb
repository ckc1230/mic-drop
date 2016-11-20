class ShootoutMicrophone < ApplicationRecord
  belongs_to :shootout
  belongs_to :microphone
  has_attached_file :audio
  validates_attachment_content_type :audio, :content_type => [ 'audio/wav', 'audio/mpeg']

end
