require 'benchmark'

N = 100000

Benchmark.bm(10) do |x|
  x.report("+=") do
    str1 = ""
    str2 = "s"
    N.times { str1 += str2 }
  end

  x.report("<<") do
    str1 = ""
    str2 = "s"
    N.times { str1 << str2 }
  end
end
