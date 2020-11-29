require_relative 'log_orderer'

class Printer
  def initialize(file, unique: false)
    @data = LogOrderer.new(file, unique: unique).call
    @unique = unique
  end

  def call
    uniq = 'unique ' if unique == true
    puts "List of webpages with most #{uniq}page views:"
    data.each do |log|
      puts "#{log[0]} - #{log[1]} #{uniq}visits"
    end
  end

  private
  attr_reader :data, :unique
end
