class Organization < ApplicationRecord
    has_many :Category
    has_many :events, dependent: :destroy
    has_many :reviews
end
