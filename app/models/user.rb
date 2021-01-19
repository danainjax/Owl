class User < ApplicationRecord
    has_many :assignments
    has_many :tasks, :through => :assignments
    has_secure_password #authenticate, validates password

    has_many :comments
    has_many :comments, :through => :tasks   
    validates :username, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
