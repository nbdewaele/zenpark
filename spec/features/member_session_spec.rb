require 'rails_helper'

feature "member session" do
	let (:member) {FactoryGirl.create(:member)}

  scenario "member visits the site to log in" do
		visit root_path
		click_link "Log In"
		fill_in_signin_fields
		expect(page).to have_content("Signed in successfully.")	
  end

  scenario "member logs out of site" do
	visit root_path
	click_link "Log In"
	fill_in_signin_fields
	click_link "Sign Out"
	expect(page).to have_content("Signed out successfully")
  end

  def fill_in_signin_fields
	fill_in "user_email", with: user.user_email
	fill_in "user_password", with: member.user_password
	click_button "Log In"
  end
end
