FactoryBot.define do
  factory :ad do
    title  { Faker::Lorem.sentence }
    user_id { 16 }
    description {Faker::Lorem.paragraph(sentence_count: 20)}
    price { Faker::Number.number(digits: 3) }
    city {"Paris"}
    category {"Fone"}
    state {"New"} 
    shipment {"Delivery"}
    sold { false }

    after(:build) do |post|
      #post.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'mini_cooper.jpg')), filename: 'mini_cooper.jpg')
      #post.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'product_1.jpg')), filename: 'product_1.jpg')
      post.images.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'product_0.jpg')), filename: 'product_0.jpg')
    end
  end
end
