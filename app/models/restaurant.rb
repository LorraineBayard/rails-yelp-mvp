class Restaurant < ApplicationRecord
    validates :name, :address, :category, presence: true
    has_many :reviews
    validates :category, inclusion: { in: %w(french belgian chinese japanese italian)}
    has_many :reviews, dependent: :destroy
end

