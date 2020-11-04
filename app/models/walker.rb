class Walker < ApplicationRecord
    has_many :signups
    has_many :dogs, through: :signups
    validates :first_name, :last_name, :email,:img_url, presence: true, on: :create
    validates :first_name, uniqueness: {scope: :last_name, message: "has already been used with this last name."}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

    def full_name
        "#{first_name} #{last_name}"
    end


    

    
end
