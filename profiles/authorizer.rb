require 'ruby-prof'
require_relative '../problems/authorizer'

RubyProf.measure_mode = RubyProf::PROCESS_TIME

result = RubyProf.profile do
  Authorizer.authorize({admin: true, manager: true, edit_user: false})
end

printer = RubyProf::FlatPrinterWithLineNumbers.new(result)
printer.print
