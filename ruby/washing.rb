
# class for a cloth
class Cloth

    def initialize(clean)
        @isClean = clean
    end

    def status()
        if(@isClean)
            return "Clean"
        else
            return "Dirty"
        end
    end

    def wash()
       @isClean = true
    end
end


# class for the washing machine
class WashingMachine
  def initialize(capacity)
    @capacity = capacity
    @cloths = Array.new()
  end

  # function to add a piece of cloth
  def put(cloth)
    if(@cloths.length>=@capacity)
        puts "Washing machine is full, can't add more"
       return
    end
    puts "Adding a cloth"
    @cloths << cloth
  end

  # function to remove a cloth
  def take()
    if(@cloths.length==0)
        puts "Washing machine is empty, nothing to take out"
       return nil
    end
    tmp=@cloths[0]
    @cloths.delete_at(0)
    puts "Taking out a cloth: " + tmp.status()
    puts " --> Remaining cloths: " +  @cloths.length.to_s
    return tmp
  end

  # wash'em all!
  def wash()
      puts "Washing cloths total of: " + @cloths.length.to_s
    @cloths.each { |c|  c.wash() }
  end
end


# create our machine
machine=WashingMachine.new(30)

# add clothes here
machine.put(Cloth.new(false))
machine.put(Cloth.new(false))
machine.put(Cloth.new(false))
machine.put(Cloth.new(false))

#do the laundry here
machine.wash()

#test adding a dirty one after washing
machine.put(Cloth.new(false))

# take out 5 pieces of cloths
machine.take()
machine.take()
machine.take()
machine.take()
machine.take()

#try to remove an extra cloth while the machine is empty
machine.take()