class Comment < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :pet, optional: true

    validates :comment, 
        length: { minimum: 4, maximum: 500 },
        format: { with: /[a-zA-Z0-9]/ }
end