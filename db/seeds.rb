# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

r = Resource.new(
  :title => "A practical example of closures in JavaScript",
  :url => "https://gist.github.com/jbinto/5301893",
  :description => "Small code sample to demonstrate how closures are useful.",
)
r.user = jesse
r.save

r = Resource.new(
  :title => "Bootstrap themes",
  :url => "http://bootswatch.com/",
  :description => "A collection of Bootstrap themes. Try the bootswatch-rails gem too!",
)
r.user = jesse
r.save
