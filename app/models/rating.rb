class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true

  validates :take_again, :difficulty, :text, presence: true
end
