require "test_helper"

feature "Deleting A Task" do
  scenario "delete a task starting from home pg" do
    visit root_path
    click_on "How to create your first app"
    page.find("a[href='#{task_path(tasks(:at1))}'][data-method='delete']").click
    page.wont_have_content "app task 1"
  end
end
