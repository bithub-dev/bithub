class Resource < ActiveRecord::Base
  attr_accessible :title, :url, :description, :tag_list

  belongs_to :user
  acts_as_taggable

  validates :title, :presence => true
  validates :url, :presence => true
  validates :user, :presence => true

  scope :recent, order('created_at DESC').limit(5)

end
