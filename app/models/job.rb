class Job < ApplicationRecord
    belongs_to user
    belongs_to :assignment
    has_many :comments, through :users
    has_one :assignment, through:users
end
