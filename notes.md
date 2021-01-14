-- Project planning resource --

Requirements:

[X]   1. Use the Ruby on Rails framework.

[ ]   2. Your models must:

        • Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

        • Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

 [ ]   3.Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

 [ ]   4.You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

 [ ]   5.Your application must provide standard user authentication, including signup, login, logout, and passwords.

 [ ]   6.Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

 [ ]   7.You must include and make use of a nested resource with the appropriate RESTful URLs.

        • You must include a nested new route with form that relates to the parent resource

        • You must include a nested index or show route

 [ ]   8. Your forms should correctly display validation errors.

        a. Your fields should be enclosed within a fields_with_errors class

        b. Error messages describing the validation failures must be present within the view.

 [ ]   9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

        • Logic present in your controllers should be encapsulated as methods in your models.

        • Your views should use helper methods and partials when appropriate.

        • Follow patterns in the Rails Style Guide and the Ruby Style Guide.

 [ ]   10. Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

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

