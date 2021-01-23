# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project *for sure*
- [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) *User has_many Tasks*
- [X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) *Assignment belongs_to User*
- [X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) 
    *(User has many Tasks through Assignments )* 
    *(Task has many comments through Users - user submittable attribute)*
    
- [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) *user has many_statuses? Need to model this out 
*Task can be assigned to more than one user, "do more together"* change view of tasks when multiple users and add a validation that cannot assign to same user more than once would be great.

- [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) *User can submit a status in an assignment of a task* 
     *(Assignment is user submitted, status: "string" - open, working, closed, follow-up)*

- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data. 

- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) *need to get the url working for the scope methods and make the scope methods more usable. What data would the user want to see?*
[X]You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort). *added scope method alpha and most_comments on tasks*

(Your application must provide standard user authentication, including signup, login, logout, and passwords.)
- [X] Include signup (how e.g. Devise) *app/views/users/new.html.erb*
- [X] Include login (how e.g. Devise) *app/views/sessions/new.html.erb*
- [X] Include logout (how e.g. Devise) *app/views/layouts/application.html.erb and app/views/users/show.html.erb*
- [X] Include third party signup/login (how e.g. Devise/OmniAuth) *Facebook* making sure secret not pushed to github/ *fixed 1/22*

(You must include and make use of a nested resource with the appropriate RESTful URLs.)
- [X] Include nested resource show or index (URL e.g. users/2/recipes) 
    *users/2/assignments* and *users/2/assignments/1* and *tasks/1/comments* and *tasks/1/comments/1*
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
(You must include a nested new route with form that relates to the parent resource)
*users/1/assignments/new*, *users/2/tasks/new* *tasks/1/comments/new*
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)
        Your forms should correctly display validation errors.
        a. Your fields should be enclosed within a fields_with_errors class
        b. Error messages describing the validation failures must be present within the view.
Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers (Logic present in your controllers should be encapsulated as methods in your models.)
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

[X]Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

*Look at this and compare my functionality. How can I improve on my modeling/functionality?*
    A Group Task Manager - An application that allowed the creation of task lists with individual tasks that can be assigned to a user would flex the majority of the requirements of this assessment. You would be able to create a list of tasks, add tasks to that list, assign those tasks to a user, and allow users to change the statuses of their tasks. 
        *Thinking about Users-Jobs-Tasks(can have comments)-Assignments-Status*