require 'byebug'

class LogParser
  def initialize(file)
    @data = File.readlines(file)
  end

  def call
    @data.map(&:split)
  end
end
