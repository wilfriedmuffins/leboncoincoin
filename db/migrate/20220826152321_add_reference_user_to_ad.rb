class AddReferenceUserToAd < ActiveRecord::Migration[7.0]
  def change
    add_reference :ads, :user, foreign_key: true
  end
end
