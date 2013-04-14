class Tip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url, :address, :description, :tag_list

  acts_as_taggable

  validates :title, :presence => true
  validates :user, :presence => true

  scope :recent, order('created_at DESC').limit(5)

end