FactoryGirl.define do
  factory :clothing do
    title 'jeans'
    details 'jean details'
    image { File.new(Rails.root.join('images', 'jean.jpg')) }
    user_id '1'
    end
  end
