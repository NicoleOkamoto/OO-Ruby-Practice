class HelloWorld
  def initialize(user)
    @user = user
  end

  def hello(name = nil)
    if name
      "Hello, #{name}. My name is #{@user}!"
    else
      "Hello, World. My name is #{@user}!"
    end
  end
end

first = HelloWorld.new("Wally").hello
puts first
