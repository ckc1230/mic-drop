class Microphone < ApplicationRecord
	belongs_to :manufacturer
	has_many :shootout_microphones
	has_many :shootouts, through: :shootout_microphones
end
