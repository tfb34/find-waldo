require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	#photograph build coordinate
  	@photograph = photographs(:example1)
  	@character = @photograph.characters.build(name: "Waldo")
  end

  test "should be valid" do 
  	assert @character.valid?
  end

  test "should have a name" do
  	@character2 = @photograph.characters.build(name: "")
  	assert_not @character2.valid?
  end

  test "should return coordinates as a single string" do
    @character.coordinates.build(col: 587, row: 430)
    @character.coordinates.build(col: 635, row: 455)

    str = @character.getCoordStr()
    assert_equal "430,587,455,635", str
  end

end
