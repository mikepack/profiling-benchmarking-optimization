require 'benchmark'

N = 10000000

class InstanceVars
  def read
    @var
  end

  def write
    @var = 1
  end
end

class Accessors
  attr_accessor :var

  def read
    self.var
  end

  def write
    self.var = 1
  end
end

instance_vars = InstanceVars.new
accessors = Accessors.new

Benchmark.bm(10) do |x|
  x.report("@") do
    N.times { instance_vars.read }
  end

  x.report("reader") do
    N.times { accessors.read }
  end

  x.report("@=") do
    N.times { instance_vars.write }
  end

  x.report("writer") do
    N.times { accessors.write }
  end
end
