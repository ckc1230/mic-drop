class Manufacturer < ApplicationRecord
	has_many :microphones
	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
	extend FriendlyId
  		friendly_id :name, use: :slugged
end
