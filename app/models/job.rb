class Job < ApplicationRecord
    belongs_to user
    belongs_to :assignment
    has_many :comments, through :users
    has_one :assignment, through:users


    def new
        @job = Job.new
    end

    def create
        @job = Job.new
        @job.save
    end
end
