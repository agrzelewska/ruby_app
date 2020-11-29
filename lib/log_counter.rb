require 'byebug'
require_relative './log_parser'

class LogCounter
  def initialize(file)
    @data = LogParser.new(file).call
  end

  def call(unique: false)
    hash = {}
    webpages.uniq.each do |url|
      visits_count = unique == true ? visits(url).uniq.count : visits(url).count
      hash.merge!(url => visits_count)
    end
    hash
  end

  private

  def webpages
    @data.map { |log| log[0] }
  end

  def visits(webpage)
    @data.select { |log| log[0] == webpage }
         .map { |log| log[1] }
  end
end
