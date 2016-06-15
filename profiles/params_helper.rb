require 'ruby-prof'
require_relative '../problems/params_helper'

RubyProf.measure_mode = RubyProf::PROCESS_TIME

result = RubyProf.profile do
  ParamsHelper.objectify({user_id: 1, deep_link: true})
end

printer = RubyProf::FlatPrinterWithLineNumbers.new(result)
printer.print
