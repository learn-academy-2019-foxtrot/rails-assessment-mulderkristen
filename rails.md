# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: Controller handles the methods for your program, Model handles your params, and View handles the html files that will display your program

  Researched answer: ActiveRecord handles the business logic and database communication, it's the Model. ActionController is the component that handles browser requests and facilitates communication between the model and the view. ActionView is the component that handles the presentation of pages returned to the client.



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the ____route_____ in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the _____Controller_______ in the file _____app/controllers/animals_controllers.rb ________
  ```
  class _____AnimalsController_______ < ApplicationController
    def _____index______
      animals = Animals.all
      render ______json: animals__________
    end
  end
  ```

  Step 3: Create the View in the file _____app/views/animals/index.html.erb_________
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index' 
Displays all the users

/users/1      method="GET"     # :controller => 'users', :action => 'show'
Displays the user with id=1

/users/new    method="GET"     # :controller => 'users', :action => 'new'
Displays the HTML form to create a new user

/users/       method="POST"    # :controller => 'users', :action => 'create'
Creates a new user and adds it to the database

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
Displays the HTML form to edit the user with id=1

/users/1      method="PUT"     # :controller => 'users', :action => 'update'
Updates the user with id=1

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
Deletes the user with id=1



3b. Which of the above routes must always be passed params and why?
Show, edit, update, and destroy must always have params because they require a specific instance in the database.



4. What is the public folder used for in Rails?

  Your answer: It stores html and images

  Researched answer: Anything we put into the public folder will be accessible by the rest of the application by placing the filename in the url.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

Rails.application.routes.draw do
  get '/main/:guess' => 'main#game'
end



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: 

  Researched answer: The action attribute is used to specify where the formdata is to be sent to the server after submitted. It can be used in the <form> element. The verb is GET (:action => edit and new). 



7. Name two rails generator commands and what files they create:

  Your answer: rails g controller sets up a controller in your controller file and rails g resource sets up both the controller and model files. 

  Researched answer: The rails g controller command is expecting parameters in the form of generate controller ControllerName action1 action2, and it sets up all of the following files; a controller file, a view file, a functional test file, a helper for the view, a JavaScript file, and a stylesheet file. The rails g resource command sets up a new Model, corresponding database table, controller, and an empty views folder. 


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)
- 
http://guides.rubyonrails.org/getting_started.html
1. Rails has two rules: 1. Don't Repeat Yourself: DRY is a principle which states  "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system." and 2. Convention Over Configuration: Rails has opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify.

2. The Rakefile locates and loads tasks that can be run from the command line. You can add your own tasks by adding files to the lib/tasks directory of your application.

3. To set up a form, add the code <%= form_with scope: :article, url: articles_path, local: true do |form| %> - You have to add the url: to prevent the route from going to the page that you're on at the moment since that route should only be used to display the form for a new article.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer: Cookies are small files which are stored on a user's computer. They hold data specific to a client and website, and can be accessed either by the server or the client computer. A session is stored on the server, whereas cookies store data in the visitor's browser. Sessions are more secure than cookies as it is stored in server.
