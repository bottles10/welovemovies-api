class Movie < ApplicationRecord
    enum :rating, { pg: 0, "pg-13": 1, lv: 2, r: 3, nr:4 }
    validates :title, presence: true
    validates :runtime_in_minutes, presence: true
    validates :rating, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
end
