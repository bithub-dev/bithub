class Resource < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url, :description

  validates :title, :presence => true
  validates :url, :presence => true
  validates :user, :presence => true

end
