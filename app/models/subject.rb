class Subject < ApplicationRecord
  extend Enumerize

  has_many :ratings, as: :rateable

  enumerize :period, in: { morning: 0, afternoon: 1, night: 2, full_time: 3 }, predicates: true
end
