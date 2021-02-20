class Assignment < ApplicationRecord
    belongs_to :task
    belongs_to :user
    belongs_to :ticket
end
