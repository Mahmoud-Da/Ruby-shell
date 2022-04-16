module Movement
    def select_da
      puts "hi"
    end

    def move_forward(steps=1)
      if steps == 1
        puts "Moved #{steps}step forward"
      else
        puts "Moved #{steps}steps forward"
      end
    end

    def move_backward(steps=1)
      if steps == 1
        puts "Moved #{steps}step backward"
      else
        puts "Moved #{steps}steps backward"
      end
    end

    def move_right(steps=1)
      if steps == 1
        puts "Moved #{steps}step to right"
      else
        puts "Moved #{steps}steps to right"
      end
    end

    def move_left(steps=1)
      if steps == 1
        puts "Moved #{steps}step to left"
      else
        puts "Moved #{steps}steps to left"
      end
    end
  end

  class Player
    include Movement
  end


player = Player.new
player.move_right
player.move_backward(3)
player.move_left(4)
