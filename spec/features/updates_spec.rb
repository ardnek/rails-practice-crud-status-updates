require 'rails_helper'

  feature "updates" do

    scenario "user can enter new status update" do
    visit root_path
    click_on "New status update"
    fill_in "Status", with: "Jokes"
    fill_in "User", with: "Bill Murray"
    fill_in "Likes", with: "2"
    click_on "Enter status"
    expect(page).to have_content("Status was successfully updated")
end
end
