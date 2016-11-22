class ShootoutMicrophone < ApplicationRecord
  belongs_to :shootout, inverse_of: :shootout_microphones
  belongs_to :microphone
  has_attached_file :audio, optional: true
  validates_attachment_content_type :audio, :content_type => [ 'audio/wav', 'audio/mpeg', 'audio/mp3']
end
