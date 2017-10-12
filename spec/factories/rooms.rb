FactoryGirl.define do
  factory :room do
    home_type "MyString"
    room_type "MyString"
    accommodate 1
    listing_name "MyString"
    summary "MyText"
    address "MyString"
    is_tv false
    is_quiet false
    is_coffee_tea false
    is_snacks false
    is_wifi false
    is_bw_printing false
    is_color_printing false
    is_bw_copying false
    is_color_copying false
    is_pet_friendly false
    is_fridge false
    is_parking false
    price 1
    active false
    user nil
  end
end
