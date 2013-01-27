require 'spec_helper'

describe "Sessions" do
  it "with valid data" do
    user = create(:user)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log In"
    page.should have_content("Logged in")
  end

  it "with invalid data" do
    user = create(:user)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "incorrect"
    click_button "Log In"
    page.should have_content("Email or password is invalid")
  end
end