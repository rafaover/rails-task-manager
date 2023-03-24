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
    visit task_show_url(Task.first.id)
    assert page.has_content?(Task.first.title)
  end

  test "clicking Edit Task open Edit Page of the task" do
    visit tasks_show_url(Task.first.id)
    click_on "Edit Task", match: :first
    assert page.has_content?("EDIT TASK")
  end
end
