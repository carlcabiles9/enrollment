class Subject < ApplicationRecord
    has_many :student_subjects, dependent: :destroy
    has_many :students, through: :student_subjects
    validates :name, presence: true,
                    length: { minimum: 5 }
    resourcify
end
