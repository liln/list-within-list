require "test_helper"

feature "Deleting A List" do
  scenario "delete a list starting from home pg" do
    visit root_path
    page.find("a[href='#{list_path(lists(:app))}'][data-method='delete']").click
    page.wont_have_content "How to create your first app"
  end
end
