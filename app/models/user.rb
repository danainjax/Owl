class User < ApplicationRecord
    has_many :assignments
    has_many :tasks, :through => :assignments
    has_secure_password #authenticate, validates password

    has_many :comments
    has_many :tasks, :through => :comments 
     
    validates :username, :email, presence: true, uniqueness: true #user validations
    # validates :email, presence: true, uniqueness: true #user validations
end
