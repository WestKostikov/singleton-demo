class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # class method
  def self.say_something
    puts "Hello"
  end

  # instance method
  def log_something what
    @f.puts what
  end
end

Logger.say_something

Logger = Logger.new
Logger.log_something 'Hey!'


