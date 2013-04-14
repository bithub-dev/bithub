class Tip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url, :address, :description

  validates :title, :presence => true
  validates :user, :presence => true

  acts_as_gmappable

  def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}"
  end

end