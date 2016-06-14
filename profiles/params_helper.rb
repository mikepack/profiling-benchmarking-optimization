require 'ruby-prof'
require_relative '../problems/params_helper'

RubyProf.measure_mode = RubyProf::PROCESS_TIME

N = 10000000

result = RubyProf.profile do
  ParamsHelper.betterize({user_id: 1, deep_link: true})
end

printer = RubyProf::FlatPrinterWithLineNumbers.new(result)
printer.print
