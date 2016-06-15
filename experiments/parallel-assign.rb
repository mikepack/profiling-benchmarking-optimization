require 'benchmark'

N = 10_000_000

Benchmark.bm(15) do |x|
  x.report('parallel') do
    N.times do
      a, b = 10, 20
    end
  end

  x.report('consequentially') do |x|
    N.times do
      a = 10
      b = 20
    end
  end
end