class PetPhoto < ApplicationRecord
  belongs_to :pet
  belongs_to :user
end
