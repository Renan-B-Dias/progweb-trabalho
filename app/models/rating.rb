class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true
  belongs_to :user

  validates :difficulty, :text, :grade, presence: true
end
