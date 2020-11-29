# frozen_string_literal: true

require_relative 'log_orderer'

class Printer
  def initialize(_file, unique: false)
    @data = LogOrderer.new('webserver.log', unique: unique).call
    @unique = unique
  end

  def call
    uniq = 'unique ' if unique == true
    data.each do |log|
      puts "#{log[0]} #{log[1]} #{uniq}visits"
    end
  end

  private
  attr_reader :data, :unique
end
