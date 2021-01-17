class Comment < ApplicationRecord
    belongs_to :users
    belongs_to :jobs, through :users
end
