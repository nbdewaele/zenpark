require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do
	  let!(:user) do
    User.create(
      fullname: "Rube Goldberg", 
      email: "machine@example.com",
    )
end

  it "displays their name" do
visit root_path(user)
    expect(page).to have_content user.fullname
  end

  before do
    visit root_path(user)
  end

  it "displays their name" do
    expect(page).to have_content user.fullname
  end

  it "displays their email" do
    expect(page).to have_content user.email
  endπ
end