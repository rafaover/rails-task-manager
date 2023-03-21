require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "visiting /tasks and rendering tasks" do
    visit tasks_url
    assert_selector "h1", text: "My Tasks"
  end

  test "visiting /tasks and checking for a list of tasks" do
    visit tasks_url
    assert_selector "li", count: Task.count
  end

  test "visiting /tasks/:id and rendering task details" do
    visit task_details_url(Task.first.id)
    assert page.has_content?(Task.first.title)
  end
end
