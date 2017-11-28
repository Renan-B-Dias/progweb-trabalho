class Teacher < ApplicationRecord
  validates :name, :title, presence: true

end
