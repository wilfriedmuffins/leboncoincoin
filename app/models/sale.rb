class Sale < ApplicationRecord
  after_create :add_sale
  after_destroy :reset_sale

  belongs_to :ad

  belongs_to :user

  def add_sale
    @ad = Ad.find(ad_id)
    @ad.update_attribute(:sold, true)
  end

  def reset_sale
    @ad = Ad.find(ad_id)
    @ad.update_attribute(:sold, false)
  end
  
end
