class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
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
Logger.instance.log_something 'blabla'
Logger.instance.log_something 'blabla2'

Logger = Logger.new
Logger.log_something 'Hey!'


