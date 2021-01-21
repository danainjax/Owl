# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project *for sure*
- [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) *User has_many Tasks*
- [X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) *Assignment belongs_to User*
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) 
    *(User has many Tasks through Assignments )* 
    *(Task has many comments through Users - user submittable attribute)*
    <!-- *(Users have many Supports through Comments)* -->
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) *user has many_statuses? Need to model this out 
*Build out the functionality to assign a task to more than one user/multiple users*
- [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) *User can submit a status in an assignment of a task* 
     *(Assignment is user submitted, status: "string" - open, working, closed, follow-up)*
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [X] Include signup (how e.g. Devise) *app/views/users/new.html.erb*
- [X] Include login (how e.g. Devise) *app/views/sessions/new.html.erb*
- [X] Include logout (how e.g. Devise) *app/views/layouts/application.html.erb and app/views/users/show.html.erb*
- [X] Include third party signup/login (how e.g. Devise/OmniAuth) *Facebook*
- [X] Include nested resource show or index (URL e.g. users/2/recipes)
    *users/2/assignments* and *users/2/assignments/1*
- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
*users/1/assignments/new*, *users/2/tasks/new*
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
