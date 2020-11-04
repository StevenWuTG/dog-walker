class Dog < ApplicationRecord
    has_many :signups
    has_many :walkers, through: :signups
    validates :name, :breed, :age, :sex, presence: true, on: :create
    validates :sex, inclusion: { in: ["M", "F"]}

end
