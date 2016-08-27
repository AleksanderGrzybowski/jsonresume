#! /usr/bin/ruby

ratios =`identify -verbose out.pdf`.split("\n").select {|t| t.include? 'Print size'}[0][13..-1].split("x").map {|i| i.to_f }
puts (ratios[1] / ratios[0])
