class HelloWorldClass
  def initialize(name : String)
    @name = name
  end

  def name
    @name
  end

  def hello_world
    "hello world, #{@name}"
  end
end

user = HelloWorldClass.new "Stivenson"

puts user.hello_world