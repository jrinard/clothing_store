FactoryGirl.define do
  factory :clothing do
    name 'jeans'
    details 'jean details'
    image { File.new(Rails.root.join('spec','images', 'jeans.jpg')) }
    user_id '1'
    end
  end
