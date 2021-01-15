-- Project planning resource --

Xponent App

Models:

*User
    has_many: assignments
    has_many :jobs
    has_many jobs, through :assignments
    has_many :comments
    has_many comments, through :jobs

    <!-- has_many comments, through :jobs
    has_many :supports, through :comments -->

    username
    email
    password_digest
    

    (Want to be able to work on a job/task, update a job/task, comment on a job/task, close a job/task, request support, accept support, provide support)

*Job
    belongs_to user
    belongs_to :assignment
    has_many :comments, through :users
    has_one :assignment, through:users

    title
    description
    priority
    <!-- assignment (open, closed, in progress) -->

    (can be assigned to a user, can be accepted by, updated by, commented on, and closed by a user)

*Assignment
    belongs_to :job
    belongs_to :user
    
 -status
        select from a check box  or drop down

    (a job can be assigned - open, pending, in progress, closed)

<!-- Status
    belongs_to :user -->
    <!-- Stretch feature: (a user can have a status - working, off, what they are working on) -->

*Comment
    belongs_to :jobs, through :users
    belongs_to :job
    (a user can comment on a job
    -content
    <!-- belongs_to :support     -->
    <!-- belongs_to :user, through :supports -->
<!-- and a user can comment in the support area) -->

<!-- Stretch feature 
Support
    belongs_to :user
    has_many :comments, through users

    (model that is a chat for questions and answers, sharing information and providing team spirit) -->

