require "benchmark"

n = 1_000_000
Benchmark.bm(15) do |x|
  x.report("assign single") { n.times do; c = 'a string'; end}
  x.report("assign double") { n.times do; c = "a string"; end}
  x.report("concat single") { n.times do; 'a string ' + 'b string'; end}
  x.report("concat double") { n.times do; "a string " + "b string"; end}
end
