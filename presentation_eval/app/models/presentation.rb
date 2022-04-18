class Presentation < ApplicationRecord
    validates :presentation_name, presence: true
    validates :student_name, presence: true
    validates :date, presence: true
end
