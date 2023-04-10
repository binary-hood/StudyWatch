require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # testing my category model with both correct and invalid values to check the assertion
  setup do
    @user = users(:one)
  end

  test 'should not save empty category' do
    category = Category.new

    category.save
    refute category.valid?
  end

  test 'should save valid category' do
     category = Category.new

     category.title = "Weight Loss"
     category.user = @user

     category.save
     assert category.valid?
  end

end
