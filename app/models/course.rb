class Course < ApplicationRecord
  extend Enumerize

  has_many :users, inverse_of: :course

  validates :name, presence: true

  enumerize :area_of_study, in: { biology: 0, humans: 1, exacts: 2}
end
