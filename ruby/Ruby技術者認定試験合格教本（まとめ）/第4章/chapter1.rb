"class定義"
class Foo
  def initialize a, b
    @a = a
    @b = b
  end

  def method
     @a
  end
end


foo1 = Foo.new(1, 2)
p foo1.method #=> 1


"classメソッド"
foo1.class == Foo #=> 2
