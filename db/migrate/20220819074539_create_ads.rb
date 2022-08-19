class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :category
      t.string :state
      t.string :images
      t.text :description
      t.integer :price
      t.string :city
      t.string :shipment

      t.timestamps
    end
  end
end
