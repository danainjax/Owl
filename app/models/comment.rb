class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :task
    belongs_to :ticket
end
