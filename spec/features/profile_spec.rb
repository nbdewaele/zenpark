require 'rails_helper'
# require 'factory_girl_rails'

feature "profiles" do
	let(:user) {FactoryGirl.create(:user)}


	scenario "host creates profile" do
		visit new_user_registration_path(user)
		fil_in "profile(bio)", with: FFaker::Lorem.paragraph(2)
		click_button "Create Profile"
		expect(page).to have_content("Profile was successfully created")
  end
end