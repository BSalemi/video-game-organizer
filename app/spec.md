# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (e.g. User, Post, Category) 
    # User, Game, System, Company, UserGame models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    # A System has many Games, a Company has many Systems
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    # Games belong to a System/Company
- [x] Include user accounts with unique login attribute (username or email)
    # used validations to make sure username and emails were unique.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [x] Ensure that users can't modify content created by other users
    # users can only modify their own information
- [x] Include user input validations
    # have validations for username, email, and games attributes
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    # included several failure view pages with errors if a user inputs information incorrectly.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message