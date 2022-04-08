class Complaint < ApplicationRecord


    validates :name, presence: true, uniqueness: true
    

end
