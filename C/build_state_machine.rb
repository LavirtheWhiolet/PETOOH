require 'rbahocorasick'
require 'yaml'

words = %W{ kuka ko }

m = RBAhoCorasick::DFA.new
words.each { |word| m.add word }
m.finalize
puts m.to_yaml
