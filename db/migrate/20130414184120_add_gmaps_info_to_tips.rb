class AddGmapsInfoToTips < ActiveRecord::Migration
  def change
    add_column :tips, :latitude,  :float #you can change the name, see wiki
    add_column :tips, :longitude, :float #you can change the name, see wiki
    add_column :tips, :gmaps, :boolean #not mandatory, see wiki
  end
end
