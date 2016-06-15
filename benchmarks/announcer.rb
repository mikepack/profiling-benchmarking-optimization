require 'benchmark'
require_relative '../problems/announcer'
require_relative '../optimizations/announcer'
require_relative '../optimizations/more_announcer'

N = 100000

Benchmark.bm(10) do |x|
  x.report('baseline') do
    N.times { Announcer.goal }
  end

  x.report('optimized') do
    N.times { OptimizedAnnouncer.goal }
  end

  x.report('optimized++') do
    N.times { MoreOptimizedAnnouncer.goal }
  end

  x.report('200 baseline') do
    N.times { Announcer.goal(200) }
  end

  x.report('200 optimized') do
    N.times { OptimizedAnnouncer.goal(200) }
  end

  x.report('200 optimized++') do
    N.times { MoreOptimizedAnnouncer.goal(200) }
  end
end
