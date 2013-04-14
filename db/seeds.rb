# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Resource.destroy_all

jesse = User.create(
  :full_name => "Jesse Buchanan",
  :email => "jbinto@jbinto.ca",
  :github_link => "https://github.com/jbinto",
  :twitter_link => "https://github.com/jbintodotca",
  :blog_link => "http://jbinto.ca",
  :bio => "A man, a plan, a canal, Panama.",
  :password => "abc123"
)

shane = User.create(
  :full_name => "Shane Fera",
  :email => "shane.d.fera@gmail.com",
  :github_link => "https://github.com/abaxial",
  :twitter_link => "https://github.com/stultiloquent",
  :blog_link => "http://intheinterestofliving.com/",
  :bio => "A beatnik, peacenik, poet, dreamer, computer junkie with illusions of normality.",
  :password => "abc123"
)

# Note: Originally I had Resource.create here, but that throws a MassAssignmentError.
# Rather than blindly adding :user (which would be *bad*), we'll do it the long way here.

# Other strategies are listed here:
# http://stackoverflow.com/questions/10669556/bypass-attr-accessible-in-seeds-rb

Resource.attr_accessible :user, :created_at

Resource.create(
  :title => "A practical example of closures in JavaScript",
  :url => "https://gist.github.com/jbinto/5301893",
  :description => "Small code sample to demonstrate how closures are useful.",
  :user => jesse,
  :tag_list => "javascript, closures"
)
Resource.create(
  :title => "Bootstrap themes",
  :url => "http://bootswatch.com/",
  :description => "A collection of Bootstrap themes. Try the bootswatch-rails gem too!",
  :user => shane,
  :tag_list => "css, bootstrap"
)
Resource.create(
  :title => "Font Awesome",
  :url => "http://fortawesome.github.io/Font-Awesome/",
  :description => "A web font filled with useful icons, better than the Glyphicons provided with Bootstrap. Try the font-awesome rails gem!",
  :user => jesse,
  :tag_list => "css, fonts, icons"
)

Resource.create(
  :title => "simple_form",
  :url => "https://github.com/plataformatec/simple_form",
  :description => "A gem that improves 'form_for'. It plays nicely with Bootstrap.",
  :user => shane,
  :tag_list => "rails, forms"
)

Resource.create(
  :title => "Railscast #382: Tagging",
  :url => "http://railscasts.com/episodes/382-tagging",
  :description => "This Railscast walks you through implementing tagging using the acts-as-taggable-on gem.",
  :user => shane,
  :tag_list => "rails, tagging"
)

Resource.create(
  :title => "gmaps4rails",
  :url => "http://railscasts.com/episodes/382-tagging",
  :description => "This gem adds geocoding capability to your ActiveRecord models, and the ability to display an embedded Google Map for any address.",
  :user => shane,
  :tag_list => "rails, maps, geocoding"
)

Tip.attr_accessible :user

Tip.create(
  :title => "Burger Bratz",
  :url => "http://burgerbrats.ca/",
  :address => "254 Adelaide St W, Toronto, ON",
  :user => shane,
  :tag_list => "food, nearby, burgers",
  :description => "Legendary burgers."
)

Tip.create(
  :title => "Burrito Boyz",
  :url => "http://www.burritoboyz.ca/",
  :address => "254 Adelaide St W, Toronto, ON",
  :user => jesse,
  :tag_list => "food, nearby, burgers",
  :description => "Legendary burgers."
)

Tip.create(
  :title => "Burger Bratz",
  :url => "http://www.burritoboyz.ca/",
  :address => "218 Adelaide St W, Toronto, ON",
  :user => shane,
  :tag_list => "food, nearby, burritos",
  :description => "The other 'BB'. Shane says it's 'okay'."
)
Tip.create(
  :title => "Banh Mi Boyz",
  :url => "http://www.banhmiboys.com/",
  :address => "392 Queen St W, Toronto, ON",
  :user => shane,
  :tag_list => "food, nearby, banh mi",
  :description => "Vietnamese sandwiches."
)
Tip.create(
  :title => "git commit --amend",
  :user => jesse,
  :tag_list => "git",
  :description => "If you make a mistake in your commit message, you can use `git commit --amend` to change the message."
)
Tip.create(
  :title => "render 'form' partial",
  :user => jesse,
  :tag_list => "rails forms",
  :description => "If you have a partial called 'rabbits/form', Rails will implicitly pass the current form."
)
Tip.create(
  :title => "git commit --amend",
  :user => jesse,
  :tag_list => "git",
  :description => "If you make a mistake in your commit message, you can use `git commit --amend` to change the message."
)

