require 'test_helper'

class UserTest < ActiveSupport::TestCase

   #testing my user model to see if the model is working fine
   test 'should not save invalid user' do
     user = User.new
     user.save
     refute user.valid?
   end

   test 'should save valid user' do
     user = User.new
     user.email = 'faseehlodhi@surrey.co.uk'
     user.password = 'faseehlodhi'
     user.save
     assert user.valid?
   end
end
