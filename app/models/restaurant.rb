class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w[Chinese Italian Japanese French Belgian],
                                    message: '%{value} is not a valid category' }
  has_many :reviews, dependent: :destroy
end
