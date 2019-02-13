class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy, inverse_of: :parent, inverse_of: :children

  after_destroy :perform_some_actions
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
