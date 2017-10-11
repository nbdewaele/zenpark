require 'rails_helper'

feature "user registers for site" do


	scenario "host registers" do
		visit new_user_registration_path
		click_link "Become A Host"
		fill_in_registration_fields
		expect(page).to have_content("Welcome, you have signed up successfully.")
	end

	def fill_in_registration_fields
		fill_in "user[fullname]", with: FFaker::Name.name
		fill_in "user[email]", with: FFaker::Internet.email
		fill_in "user[password]", with: Devise.friendly_token.first(8)
		click_button "Sign up"
	end
	
end