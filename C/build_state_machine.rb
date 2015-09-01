require 'ahocorasick'
require 'yaml'

words = %W{ ab bd }

ah = AhoC::Trie.new :DFA
words.each { |word| ah.add word }
puts ah.to_yaml
