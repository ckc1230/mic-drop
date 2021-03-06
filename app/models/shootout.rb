class Shootout < ApplicationRecord
	has_many :shootout_microphones, inverse_of: :shootout
	has_many :microphones, through: :shootout_microphones
	has_many :fav_shootouts
	belongs_to :instrument
	belongs_to :user
	accepts_nested_attributes_for :shootout_microphones, allow_destroy: true
end