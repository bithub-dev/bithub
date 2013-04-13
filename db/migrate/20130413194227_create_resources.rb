class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.string :description
      t.references :user 
      t.timestamps
    end
  end
end
