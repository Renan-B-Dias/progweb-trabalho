class Teacher < ApplicationRecord
  extend Enumerize

  validates :name, :title, presence: true

  enumerize :title, in: { doctor: 0, master: 1, substitute: 2 }, predicates: true

  has_many :ratings, as: :rateable
end
