require 'ruby-prof'
require_relative '../problems/concatenator'

RubyProf.measure_mode = RubyProf::PROCESS_TIME

result = RubyProf.profile do
  Concatenator.soccer
end

printer = RubyProf::FlatPrinterWithLineNumbers.new(result)
printer.print
