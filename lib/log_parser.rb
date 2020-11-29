require 'byebug'

class LogParser
  def initialize(file)
    @data = IO.readlines(file)
  end

  def call
    @data.map(&:split)
  end
end
