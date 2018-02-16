require 'test_helper'

class CoordinateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	def setup
		@character = characters(:waldo)
		@coordinate = @character.coordinates.build(col: 0, row: 0)
	end

	test "should be valid" do
		assert @coordinate.valid?
	end

	test "should have col present" do
		coordinate = @character.coordinates.build(row:0);
		assert_not coordinate.valid?
	end

	test "should have row present" do 
		coordinate = @character.coordinates.build(col:0);
		assert_not coordinate.valid?
	end

	test "col should be only integer" do
		coordinate = @character.coordinates.build(col: 0.5, row: 5)
		assert_not coordinate.valid?
	end

	test "row should be only integer" do 
		coordinate = @character.coordinates.build(col: 5, row: 10.5)
		assert_not coordinate.valid?
	end

	test "col should be greater than or equal to 0" do
		coordinate = @character.coordinates.build(col: -1, row: 0)
		assert_not coordinate.valid? 
	end

	test "row should be greater than or equal to 0" do
		coordinate = @character.coordinates.build(col: 0, row: -10)
		assert_not coordinate.valid?
	end

end
