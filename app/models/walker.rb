class Walker < ApplicationRecord
    has_many :signups
    has_many :dogs, through: :signups
    validates :first_name, :last_name, :email, presence: true, on: :create
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


    

    
end
