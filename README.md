Game Life by Ruby and Minitest
------------------------------

work in progress

Install:
* RVM (rbenv)
* Ruby
* bundler

Start `bundle` in folder:

```console
bundle
```

Start Guard for autotest (`-p` if works in Vagrant):

```console
guard -p
```

Edit `lib/*`, `test/*`.

Planned:

```ruby
class Entity
  def initialize(position, symbol)
    @position = { r: position[:r], c: position[:c]}
    @symbol   = symbol
  end

  def symbol
    @symbol
  end
end

class EntityGrass < Entity
  def initialize(position)
    super(position, '.')
  end
end

class GameWorld
  def initialize(rows, cols, default_map_entity)
    @entities = []
    @default_map_entity = default_map_entity
    init_default
  end

  def init_default
    (0..rows-1).each do |r|
      (0..cols-1).each do |c|
        entity = default_map_entity.new({ r: r, c: c})
        add_entity(entity)
      end
    end
  end

  def add_entity(entity)
    @entities << entity
  end
end
```
