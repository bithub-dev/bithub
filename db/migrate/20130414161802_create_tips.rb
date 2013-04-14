class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.string :url
      t.string :address
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end
