class Review < ApplicationRecord
  belongs_to :critic
  belongs_to :movie

  validates :content, presence: true
  validates :score, presence: true
end
