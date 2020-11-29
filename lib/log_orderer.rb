# frozen_string_literal: true

require 'byebug'
require_relative 'log_counter'

class LogOrderer
  def initialize(file, unique: false)
    @data = LogCounter.new(file).call(unique: unique)
  end

  def call
    @data.sort_by { |url, count| [-count, url] }
  end
end
