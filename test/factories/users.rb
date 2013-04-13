# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "example@example.org"
    full_name "John Doe"
    github_link "https://github.com/johndoe"
    twitter_link "https://twitter.com/johndoe"
    blog_link "http://example.org"
    bio "A man, a plan, a canal, Panama."
  end
end
