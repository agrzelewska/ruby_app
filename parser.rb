require_relative 'lib/printer'

filename = ARGV.first

Printer.new(filename).call

Printer.new(filename, unique: true).call
