class Theater < ApplicationRecord
    before_save { state.upcase! }

    has_many :cinemas
    has_many :movies, through: :cinemas, dependent: :destroy

    validates :name, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :state, presence: true, length: {is: 2 }
    validates :zip, presence: true, length: {is: 5}
end
