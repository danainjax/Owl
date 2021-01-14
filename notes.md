-- Project planning resource --

Xponent App

Models:

User
    has_many jobs
    has_one status
    has_many comments
    has_many supports through comments

    name
    user id
    email
    team
    lead
    schedule
    status

    (Want to be able to work on a job/task, update a job/task, comment on a job/task, close a job/task, request support, accept support, provide support)

Job
    belongs_to user

    description
    status (open, closed, in progress)

    (can be assigned to a user, can be accepted by, updated by, commented on, and closed by a user)

Status
    belongs_to user
    belongs_to job

        select from a check box  or drop down

    (a user can have a status - working, off, what they are working on, AND a job can have a status - open, pending, in progress, closed)

Comment
    belongs_to user
    

    (a user can comment on a job and a user can comment in the support area)

Support

    has_many comments through users

    (model that is a chat for questions and answers, sharing information and providing team spirit)

