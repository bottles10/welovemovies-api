class Cinema < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
end
