class Tip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url, :address, :description

  validates :title, :presence => true
  validates :user, :presence => true

end