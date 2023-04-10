require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @entry = entries(:lunch)
    @category = categories(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { task_name: @entry.task_name, task_description: @entry.task_description, due_date: @entry.due_date, notes: @entry.notes, instructor_name: @entry.instructor_name, category_id: @category.id } }
    end

    assert_redirected_to entry_url(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { task_name: @entry.task_name, task_description: @entry.task_description, due_date: @entry.due_date, notes: @entry.notes, instructor_name: @entry.instructor_name, category_id: @category.id } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
