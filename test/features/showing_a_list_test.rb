require "test_helper"

feature "Showing A List" do
  scenario "show a list and tasks from the home page" do
    visit root_path
    click_on lists(:rails).description

    page.text.must_have_content lists(:rails).description
    page.text.must_have_content tasks(:rt1).description
    page.text.must_have_content tasks(:rt2).description
    page.text.must_have_content tasks(:rt3).description
  end
end
