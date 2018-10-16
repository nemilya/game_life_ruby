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

class GameLevel
  attr_reader :cnt_rows
  attr_reader :cnt_cols

  def initialize(map_ascii)
    # todo
  end

  def set_cell(r, c, cell)
    # todo
  end

  def map_ascii
    # todo
  end
end

class GameLogicBase
  def calculate_next_generation_cell_at(row, col, current_generation)
    # abstract
  end
end

class GameLogicClassic < GameLogicBase
  def calculate_next_generation_cell_at(row, col, current_generation)
    # todo implement
  end
end

class GameManager
  def initialize(map_ascii, game_logic=GameLogicClassic.new)
    @generation_number  = 1
    @current_generation = GameLevel.new(map_ascii)
    @next_generation    = GameLevel.new(map_ascii)
    @life_logic = game_logic
  end

  def generation_number
    @generation_number
  end

  def next_generation
    generate_next_generation
    swap_generations
    increment_generation_number
  end

  def map_ascii
    @current_generation.map_ascii
  end

private
  
  def generate_next_generation
    (0..@current_generation.cnt_rows).each do |r|
      (0..@current_generation.cnt_cols).each do |c|
        next_generation_cell = @life_logic.calculate_next_generation_cell_at(r, c, @current_generation)
        @next_generation.set_cell(r, c, next_generation_cell)
      end
    end
  end

  def swap_generations
    tmp_generation = @current_generation
    @current_generation = @next_generation
    @next_generation = tmp_generation
  end

  def increment_generation_number
    @generation_number += 1
  end

end


```
