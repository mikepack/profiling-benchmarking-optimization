require 'benchmark'
require_relative '../problems/params_helper'
require_relative '../optimizations/params_helper'

N = 1000000

Benchmark.bmbm(10) do |x|
  x.report('baseline') do
    N.times { ParamsHelper.objectify({user_id: 1, deep_link: true}) }
  end

  x.report('optimized') do
    N.times { OptimizedParamsHelper.objectify({user_id: 1, deep_link: true}) }
  end
end
