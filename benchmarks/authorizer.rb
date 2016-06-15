require 'benchmark'
require_relative '../problems/authorizer'
require_relative '../optimizations/authorizer'

N = 10000000

Benchmark.bmbm(10) do |x|
  x.report('baseline') do
    N.times { Authorizer.authorize({admin: true, manager: true, edit_user: false}) }
  end

  x.report('optimized') do
    N.times { OptimizedAuthorizer.authorize(0b110) }
  end
end
