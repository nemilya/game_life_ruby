require_relative 'test_helper'
require_relative '../lib/entity'

class EntityTest < Minitest::Test
  def setup
    @entity = Entity.new({ r: 1, c: 2}, '.')
  end

  def test_exists
    assert @entity
  end

  def test_init_position
    assert_equal 1, @entity.position[:r]
    assert_equal 2, @entity.position[:c]
  end

  def test_init_symbol
    assert '.', @entity.symbol
  end

end
