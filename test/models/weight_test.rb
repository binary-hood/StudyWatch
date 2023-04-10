require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # testing my weight model with both correct and invalid values to check the assertion
  setup do
    @user = users(:one)
  end

  test 'should not save empty weight' do
    weight = Weight.new

    weight.save
    refute weight.valid?
  end

  test 'should not save negative weight' do
    weight = Weight.new
    weight.user = @user
    weight.weight = -90.8

    weight.save
    refute weight.valid?
  end


  test 'should save valid weight' do
     weight = Weight.new

     weight.weight = 99.9
     weight.user = @user

     weight.save
     assert weight.valid?
  end
end
