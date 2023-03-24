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

  test "clicking (Edit Task) open Edit page and shows content" do
    task = Task.first
    visit task_show_url(task.id)
    click_on "Edit Task"
    assert_current_path(edit_task_path(task.id))
    assert_selector "h1", text: "EDIT TASK"
    assert_field "task[title]", with: task.title
  end
end
