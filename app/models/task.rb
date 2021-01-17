class Task < ApplicationRecord
    has_many :assignments
    has_many :users, :through => :assignments
    has_many :users #unsure if this overwrites the line above it
    has_many :comments, :through => :users
end
