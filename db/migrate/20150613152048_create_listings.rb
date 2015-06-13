class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :username
      t.string :password
      t.string :Posting
      t.string :title
      t.string :zip
      t.string :description
      t.string :sqft
      t.string :rent
      t.string :bedrooms
      t.string :bathooms
      t.string :street
      t.string :Xstreet
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
