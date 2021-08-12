class List < ApplicationRecord
  #Relations
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  #Validations
  validates :name, presence: true, uniqueness: true

end
