class Task < ApplicationRecord
    has_many :assignments
    has_many :users, :through => :assignments
    has_many :comments, :through => :users

    scope :alpha, -> { order(:title) } #call this method in the controller
end
