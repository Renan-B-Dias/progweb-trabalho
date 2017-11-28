class Course < ApplicationRecord
  has_many :users, inverse_of: :course

  validates :name, presence: true
end
