class Student < ApplicationRecord
    has_many :student_subjects, dependent: :destroy
    has_many :subjects, through: :student_subjects
    
    has_one_attached :avatar
    validates :last_name,:course,:first_name, presence: true
   
                    
end
