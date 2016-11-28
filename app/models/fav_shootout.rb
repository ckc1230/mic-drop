class FavShootout < ApplicationRecord
  belongs_to :user
  belongs_to :shootout
end
