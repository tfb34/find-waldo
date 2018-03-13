require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    def setup 
        @photograph = photographs(:example1);
        @user = @photograph.users.build();
    end

    test "should be valid" do
        assert @user.valid?
    end

end
