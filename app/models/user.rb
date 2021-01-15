class User < ApplicationRecord
    has_many: assignments
    has_many :jobs
    has_many jobs, through :assignments
    has_many :comments
    has_many comments, through :jobs   
end
