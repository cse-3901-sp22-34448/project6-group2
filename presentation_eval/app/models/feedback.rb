class Feedback < ApplicationRecord
    validates :score, presence: true
    validates :feedback, presence: true
    belongs_to :presentation
end
