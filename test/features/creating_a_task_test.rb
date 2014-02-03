require "test_helper"

feature "Creating A Task" do
  scenario "create a task from the home page" do
    visit root_path
    click_on "How to set up Ruby"
    click_on "New Task"
    fill_in "Description", with: "Ruby task 1"
    click_on "Create Task"
    page.must_have_content "Task was successfully created"
    page.must_have_content "Ruby task 1"
  end
end
