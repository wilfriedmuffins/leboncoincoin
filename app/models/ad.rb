class Ad < ApplicationRecord

    has_many_attached :images
    
    belongs_to :user

    belongs_to :sale

    validates :title, presence: true
    validates :category, presence: true
    validates :state, presence: true
    validates :images, presence: true
    validates :description, presence: true, length: { minimum: 15 }
    validates :price, presence: true
    validates :shipment, presence: true
    validates :city, presence: true
    
end
