class Microphone < ApplicationRecord
	belongs_to :manufacturer
	has_many :shootout_microphones
	has_many :shootouts, through: :shootout_microphones
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	extend FriendlyId
  		friendly_id :model, use: :slugged
end
