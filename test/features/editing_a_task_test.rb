require "test_helper"

feature "Editing A Task" do
  scenario "edit a task description starting from home page" do
    visit root_path
    click_on lists(:rails).description
    click_on tasks(:rt2).description
    click_on "Edit"
    fill_in "Description", with: "this task is booya!"
    click_on "Update Task"
    page.must_have_content "this task is booya!"
    page.wont_have_content "rails task 2"
  end
end
