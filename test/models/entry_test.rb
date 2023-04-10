require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #testing my entry model to see if everything works well with wrong values and correct assertion
  setup do
    @user = users(:one)
    @category = categories(:one)
  end

  test 'should not save empty entry' do
      entry = Entry.new

      entry.save
      refute entry.valid?
  end

  test 'should save valid entry' do
   entry = Entry.new

   entry.meal_type = "Breakfast"
   entry.calories = 400
   entry.protien = 200
   entry.carbohydrates = 100
   entry.fats = 100
   entry.user = @user
   entry.category_id = @category.id

   entry.save
   assert entry.valid?
  end

  test 'should not save negative values' do
    entry = Entry.new

    entry.meal_type = "Dinner"
    entry.calories = -200
    entry.protien = -200
    entry.carbohydrates = -100
    entry.fats = -100
    entry.user = @user

    entry.save
    refute entry.valid?
  end

end
