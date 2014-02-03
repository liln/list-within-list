require "test_helper"

feature "Editing A List" do
  scenario "edit a list description starting from home page" do
    visit root_path
    click_on lists(:ruby).description # on home page
    click_on lists(:ruby).description # on list page
    fill_in "Description", with: "How to get started with Ruby on Ubuntu"
    click_on "Update List"
    page.must_have_content "How to get started with Ruby on Ubuntu"
    page.wont_have_content "How to set up Ruby"
  end
end
