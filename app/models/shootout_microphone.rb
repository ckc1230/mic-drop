class ShootoutMicrophone < ApplicationRecord
  belongs_to :shootout, inverse_of: :shootout_microphones
  belongs_to :microphone
  has_attached_file :audio
  validates_attachment_size :audio, :less_than => 3.megabytes
  validates_attachment_content_type :audio, :content_type => [ 'audio/wav', 'audio/mpeg', 'audio/mp3']
end
