class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true

  # validates :integer, :rating { :in => 0..5 }, :numericality => true
end
