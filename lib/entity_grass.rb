require_relative 'entity'

class EntityGrass < Entity
  def initialize(position)
    super(position, '.')
  end
end