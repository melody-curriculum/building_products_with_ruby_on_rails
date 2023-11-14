# Building Products with Ruby on Rails 
--

### Who uses Ruby on Rails?
- Twitter was first built using Ruby on Rails. 
- Shopify, CrunchBase, Groupon, LivingSocial, Bloomberg, Indiegogo, Airbnb, SoundCloud, Bleacher Report, Square, Zendesk, Hulu, Slideshare, Github, Heroku...
- **TODO**: Research some benefits of using Ruby on Rails on the backend of your application and be ready to share out to the class. (5 min)

### MVC
- **TODO**: With a partner discuss what MVC stands for and the purpose of each part in a Ruby on Rails application. (5 min)
- Allows for separation of logic.
- Model holds the code that interacts with the database.
- View hold the code that controls what the user sees, erb files. 
- Controller glues the two together, holds the methods that fire up the views. 

### Asset Pipeline
- Rails does a nice job at loading static files for us, whether it is a javascript file or a css file, without us having to link to it in our application. 
- The software that is responsible for bringing in these static assets is what is known as the asset pipeline. 
- **TODO**: Let's take a look at this in action. 

### Routing
- Recognizes URLs and dispatches them to a controller's action. 
- Can also generate paths and URLs. 
- **Resource Routing** allows you to quickly declare all common routes for a given controller. In a single line of code you declare your routes for index, show, new, edit, create, update, and destroy actions. 

	`resources :users`

### Associations
- Declaring of relationships in our models. 
- They make common operations simpler. 

	```
	class Customer < ActiveRecord::Base
	  has_many :orders, dependent: :destroy
	end
	 
	class Order < ActiveRecord::Base
	  belongs_to :customer
	end

	```
- Types of associations: 

	- belongs_to
	- has_one
	- has_many
	- has_many :through
	- has_one :through
	- has_ and _belongs _ to_many
- **TODO**: With a partner research the different associations you are assigned and be prepared to share out with the class. Figure out what a foreign key is as well. Come up with examples. (10-15 min)

### Validations
- Model-level validators. 
- Used to ensure that only valid data is saved into your database.

	```
	class Person < ActiveRecord::Base
	  validates :name, presence: true
	end

	```
- **TODO**: With a partner research the different validators be prepared to share out with the class. Come up with examples and also be able to explain the benefit of including that validator. (10-15 min)

### In-class Project
- **TODO**: We will be creating a book manger system and we will be implementing what we learned in class today- associations, validations, resource routing, and asset pipeline. You have three levels to choose from. Extra credit: Research `flash messages` and add them :)
- Before you start, whiteboard out the process of starting a Rails project with your partner- let's discuss out loud.  


