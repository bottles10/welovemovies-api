class Critic < ApplicationRecord
    validates :preferred_name, presence: true
    validates :surname, presence: true
    validates :organization_name, presence: true 
end
