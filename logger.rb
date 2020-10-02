require 'singleton'

class Loggeer

  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log something
    @f.puts something
    @f.flush
  end

end