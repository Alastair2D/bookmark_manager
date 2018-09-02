## Agile & TDD
❤️ Generate User Stories from Requirements
Turn "users got to log in" into "As a user, so that I can access my stuff, I want to log in".
❤️ Build a complete full-stack feature.
Write a feature test for viewing bookmarks. Build the feature, including controller, model, and database code.
## Engineering and 'Dev Recipes'
❤️ Set up a Ruby web project.
Take an empty directory. Get Sinatra up and running and showing "Hello World" when I visit localhost.
❤️ Attach a database to a web application.
Use SQL in a controller to read a bookmark record from a database.
❤️ Separate application behaviour from database behaviour.
Write a controller method that gets all bookmarks from a database and renders them into a view.
❤️ Map objects across systems.
Explain how a Bookmark instance and a bookmark database record are related to one another.
💛 Create a CRUD system.
Create, Read, Update, and Delete bookmark records in a database from a user-clickable web interface.
💛 Implement a RESTful routing convention.
Turn routes like this: GET /show-bookmark-1 into routes like this: GET /bookmarks/1.
💚 Wrap an adapter object.
Call Bookmark.create and get back an instance of the Bookmark class with all the attributes you passed to .create, and an id attribute.
💚 Validate in the model layer.
Stop Bookmark.create from creating a bookmark record in the database if its URL is invalid.
💚 Build a Registration system.
Allow a user to sign up to an application through a clickable form. Also, encrypt their password.
💚 Build an Authentication system.
Allow a user to sign in to an application through a clickable form, using some details including their password.
## Databases
❤️ Install PostgreSQL.
Make it so that when you type psql into your Terminal, you get an interface to PostgreSQL.
❤️ Create a database.
Make it so that when you list databases (\l) in psql, you can see a database you created in the list of databases.
❤️ Implement a one-to-many relationship.
Get all comments for a bookmark using SQL, or with a method like this: bookmark.comments.
💛 Use the psql command to interact with PostgreSQL.
Create a database in psql. Add a table. Add some records. Read those records.
💛 Create tables using SQL.
Make it so that when you list a table (\dt) in psql, you see a table you created.
💛 Use SQL query terms like SELECT, FROM, WHERE, *.
Use psql to read all bookmarks, then just bookmarks with https URLs, from a database.
💛 Use SQL CRUD terms like INSERT, DELETE, and UPDATE.
Use psql to create a new bookmark in a database. Then update its URL. Then delete it.
💛 Implement a many-to-many relationship.
Get all tags for a bookmark using SQL, and all bookmarks for a tag using SQL, or with methods like this: bookmark.tags and tag.bookmarks.
## Tooling
💛 Set up a test environment.
When you run your tests, your application only writes and reads data from a 'test database'. The test database is emptied between tests.
💚 Use database GUIs to interact with databases.
Use TablePlus to read and write from and to your database.
💚 Use Rake to automate environment tasks.
Take a script you run from the command-line like this: ruby my_automation_script.rb and make it work when you do this: rake script:automate.
## Skills
💛 Test-Drive advanced Objects in Ruby, including adapter, wrapper, and service objects.
Write a test for a Bookmark.create method that takes properties as arguments, and gives you back an object which exposes all those properties as attributes, and has an id attribute.
❤️ Use a step-by-step approach to pull out logic from concretes to abstractions.
Take a line of SQL written in a controller that reads bookmarks from the database. Encapsulate it in a method on a Bookmark model.