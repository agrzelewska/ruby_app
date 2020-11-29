require_relative 'lib/printer'

Printer.new('webserver.log').call

Printer.new('webserver.log', unique: true).call
