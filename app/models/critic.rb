class Critic < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :preferred_name, presence: true
    validates :surname, presence: true
    validates :organization_name, presence: true 
end
