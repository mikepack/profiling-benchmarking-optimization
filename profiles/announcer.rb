require 'ruby-prof'
require_relative '../problems/announcer'

RubyProf.measure_mode = RubyProf::PROCESS_TIME

result = RubyProf.profile do
  Announcer.goal
end

printer = RubyProf::FlatPrinterWithLineNumbers.new(result)
printer.print
