require 'benchmark'

N = 10000000

Benchmark.bmbm(10) do |x|
  x.report('hash') do
    N.times do
      options = {a: true, b: true, c: true, d: false}
      options[:a] && options[:b] && options[:c] && options[:d]
    end
  end

  x.report('bitwise') do
    N.times do
      options = 0b1110
      options & 0b1111 == 0b1111
    end
  end
end
