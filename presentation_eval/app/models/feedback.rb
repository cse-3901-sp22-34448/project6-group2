class Feedback < ApplicationRecord
    validates :score, presence: true
    validates :comments, presence: true
    belongs_to :presentation
end
