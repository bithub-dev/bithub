class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :github_link, :string
    add_column :users, :twitter_link, :string
    add_column :users, :blog_link, :string
    add_column :users, :bio, :text
    add_column :users, :gravitar, :string
  end
end
