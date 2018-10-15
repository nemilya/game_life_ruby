require_relative 'test_helper'
require_relative '../lib/entity_grass'

class EntityTest < Minitest::Test
  def setup
    @entity_grass = EntityGrass.new({ r: 3, c: 4})
  end

  def test_exists
    assert @entity_grass
  end

  def test_init_position
    assert_equal 3, @entity_grass.position[:r]
    assert_equal 4, @entity_grass.position[:c]
  end

  def test_init_symbol
    assert '.', @entity_grass.symbol
  end

end
