require "rails_helper"

RSpec.describe "User signs up" do
  scenario "successfully sign up" do
    visit new_user_registration_path
    fill_in "Username", with: " Example User"
    fill_in "Email", with: "example@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    expect(page).to have_content "example@gmail.com"
  end

  scenario "unsuccessfully" do
    visit new_user_registration_path
    fill_in "Email", with: "example@gmail.com"
    fill_in "Password", with: ""
    fill_in "Password confirmation", with: ""
    click_on "Sign up"

    expect(page).to have_content "error"
  end
end
