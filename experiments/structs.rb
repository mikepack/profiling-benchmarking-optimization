require 'benchmark'
require 'ostruct'

N = 1000000

BMStruct = Struct.new(:a, :b)

Benchmark.bmbm(10) do |x|
  x.report('openstruct') do
    N.times do
      OpenStruct.new(a: 1, b: 2)
    end
  end

  x.report('struct') do
    N.times do
      BMStruct.new(1, 2)
    end
  end
end
