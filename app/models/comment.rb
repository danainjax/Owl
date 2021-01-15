class Comment < ApplicationRecord
    belongs_to :jobs, through :users
    belongs_to :job
end
