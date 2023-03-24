require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "visiting /tasks and rendering tasks" do
    visit tasks_url
    assert_selector "h1", text: "My Tasks"
    puts "Visiting /tasks and rendering tasks Passed"
  end

  test "visiting /tasks and checking for a list of tasks" do
    visit tasks_url
    assert_selector "li", count: Task.count
    puts "Visiting /tasks and checking for a list of tasks Passed"
  end

  test "Clicking on (Add a new task) and checking if task is added to db" do
    visit tasks_url
    click_on "Add a new task"
    assert_current_path(new_task_path)
    assert_selector "h1", text: "New Task"
    fill_in "task[title]", with: "Test Title"
    fill_in "task[details]", with: "Test Details"
    click_on "Create Task"
    assert_current_path(tasks_path)
    assert page.has_content?("Test Title")
    puts "Test Add New Task Passed"
  end

  test "visiting /tasks/:id and rendering task details" do
    visit task_url(Task.first.id)
    assert page.has_content?(Task.first.title)
    puts "Visiting /tasks/:id and rendering task details Passed"
  end

  test "clicking (Edit Task) open Edit page and shows content" do
    task = Task.first
    visit task_url(task.id)
    click_on "Edit Task"
    assert_current_path(edit_task_path(task.id))
    assert_selector "h1", text: "EDIT TASK"
    assert_field "task[title]", with: task.title
    puts "clicking (Edit Task) open Edit page and shows content Passed"
  end
end
