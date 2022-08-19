json.extract! ad, :id, :title, :category, :state, :images, :description, :price, :city, :shipment, :created_at, :updated_at
json.url ad_url(ad, format: :json)
