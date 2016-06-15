require 'benchmark'

N = 10000000
a = false
b = true

Benchmark.bmbm(10) do |x|
  x.report('||') do
    N.times { a || b }
  end

  x.report('or') do
    N.times { a or b }
  end
end
