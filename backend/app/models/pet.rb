class Pet < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :address, optional: true
    belongs_to :description, optional: true
    
end
