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

troy = User.create(
    :full_name => "Troy Morning",
    :email => "troy@rocketmail.com",
    :github_link => "https://github.com/troy",
    :twitter_link => "https://github.com/troy",
    :blog_link => "http://milkandcookies.com/",
    :bio => "I run a morning show with my friend Abed",
    :password => "abc123"
)

abed = User.create(
    :full_name => "Abed Farscape",
    :email => "president@gmail.com",
    :github_link => "https://github.com/abaxial",
    :twitter_link => "https://github.com/stultiloquent",
    :blog_link => "http://intheinterestofliving.com/",
    :bio => "I run a morning show with my friend Troy.",
    :password => "abc123"
)

monty = User.create(
    :full_name => "Monty Python",
    :email => "montypython@gmail.com",
    :github_link => "https://github.com/abaxial",
    :twitter_link => "https://github.com/stultiloquent",
    :blog_link => "http://nothingmore.com/",
    :bio => "Always look on the bright side of life...",
    :password => "abc123"
)

# Note: Originally I had Resource.create here, but that throws a MassAssignmentError.
# Rather than blindly adding :user (which would be *bad*), we'll do it the long way here.

# Other strategies are listed here:
# http://stackoverflow.com/questions/10669556/bypass-attr-accessible-in-seeds-rb

Resource.attr_accessible :user, :created_at


1.upto(5) do |day|

  Resource.create(
    :title => "A practical example of closures in JavaScript",
    :url => "https://gist.github.com/jbinto/5301893",
    :description => "Small code sample to demonstrate how closures are useful.",
    :user => jesse,
    :created_at => DateTime.new(2013, 4, day),
    :tag_list => "javascript, closures"
  )
  Resource.create(
    :title => "Bootstrap themes",
    :url => "http://bootswatch.com/",
    :description => "A collection of Bootstrap themes. Try the bootswatch-rails gem too!",
    :user => shane,
    :created_at => DateTime.new(2013, 4, day),
    :tag_list => "css, bootstrap"
  )
  Resource.create(
    :title => "Font Awesome",
    :url => "http://fortawesome.github.io/Font-Awesome/",
    :description => "A web font filled with useful icons, better than the Glyphicons provided with Bootstrap. Try the font-awesome rails gem!",
    :user => jesse,
    :created_at => DateTime.new(2013, 4, day),
    :tag_list => "css, fonts, icons"
  )

  Resource.create(
    :title => "simple_form",
    :url => "https://github.com/plataformatec/simple_form",
    :description => "A gem that improves 'form_for'. It plays nicely with Bootstrap.",
    :user => shane,
    :created_at => DateTime.new(2013, 4, day),
    :tag_list => "rails, forms"
  )

end

