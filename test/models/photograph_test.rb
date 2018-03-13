require 'test_helper'

class PhotographTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    def setup
        @photograph = photographs(:example1)
    end

    test "should be valid" do
        assert @photograph.valid?
    end

    test "should have a title" do
        @photo = Photograph.new()
        assert_not @photo.valid?
    end

    test "should be unique" do
        @photograph_two = Photograph.new(title: "town_center");
        assert_not @photograph_two.valid?
    end


end
