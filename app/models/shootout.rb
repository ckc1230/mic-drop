class Shootout < ApplicationRecord
	has_many :shootout_microphones
	has_many :microphones, through: :shootout_microphones
	belongs_to :instrument
end