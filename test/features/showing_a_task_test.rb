require "test_helper"

feature "Showing A Task" do
  scenario "show a task starting from the home page" do
    visit root_path
    click_on lists(:rails).description
    page.must_have_content tasks(:rt1).description
  end
end
