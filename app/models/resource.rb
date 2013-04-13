class Resource < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url, :description
end
