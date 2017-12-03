class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true
  belongs_to :user

  validates :take_again, :difficulty, :text, :grade, presence: true
end
