class Student < ApplicationRecord
    validates :first_name ,:last_name , presence: true, length:{maximum:20}
    validates :matricule, presence: true, uniqueness:true
    validates :sexe, :birth_date, presence: true
end
