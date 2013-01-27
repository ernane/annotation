require 'spec_helper'

describe "Users" do
  it "creates a new user record" do
    visit new_user_path
    click_button "Sign Up"
    page.should have_content("Form is invalid")
    fill_in "Username", with: "Foobar"
    fill_in "Email", with: "foo@example.com"
    fill_in "user_password", with: "secret"
    fill_in "user_password_confirmation", with: "secret"
    click_button "Sign Up"
    page.should have_content("Thank you for signing up")
  end
end