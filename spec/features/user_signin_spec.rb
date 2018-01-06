require "rails_helper"

RSpec.feature "User signs in" do

  background do
    @user = User.create!(email: "example@gmail.com", password: "password", password_confirmation: "password")
  end

  scenario "successfully sign in" do
    sign_in @user
    expect(page).to have_content @user.email
  end

  scenario "unsuccessfully signs in" do
    visit new_user_session_path
    fill_in "Email", with: "wrongemail"
    fill_in "Password", with: "wrongemail"

    click_on "Log in"

    expect(page).not_to have_content @user.email
  end

end
