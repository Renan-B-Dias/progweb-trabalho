class Subject < ApplicationRecord
  extend Enumerize

  has_many :ratings, as: :rateable
  has_and_belongs_to_many :courses

  validates_presence_of :name, :workload, :description

  enumerize :period, in: { morning: 0, afternoon: 1, night: 2, full_time: 3 }, predicates: true

  scope :last_rated, -> (limit) { joins(:ratings).order("ratings.id DESC").uniq.first(4) }
  scope :search, -> (search) { joins(:courses).where("subjects.name LIKE lower(:term) OR courses.name LIKE lower(:term)", term: "%#{search.downcase}%") }

  def grade
    self.ratings.average(:grade) || 0.0
  end

  def difficulty
    self.ratings.average(:difficulty) || 0.0
  end

end
