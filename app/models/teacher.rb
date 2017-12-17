class Teacher < ApplicationRecord
  extend Enumerize

  validates :name, :title, presence: true

  enumerize :title, in: { doctor: 0, master: 1, substitute: 2 }, predicates: true

  has_many :ratings, as: :rateable

  scope :search, -> (search) { where("name LIKE :term", term: "%#{search}%") }
  scope :last_rated, -> { joins(:ratings).order("ratings.id DESC") }

  def grade
    self.ratings.average(:grade) || 0.0
  end

  def difficulty
    self.ratings.average(:difficulty) || 0.0
  end
end
