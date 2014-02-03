require "test_helper"

feature "Creating A List" do
  scenario "create a list from the home page" do
    visit root_path
    click_on "New List"
    fill_in "Description", with: "How to write a test"
    click_on "Create List"
    page.must_have_content "List was successfully created"
    page.must_have_content "How to write a test"
  end
end
