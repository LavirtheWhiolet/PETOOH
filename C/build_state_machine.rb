require 'aho_corasick'

words = %W{ a b }

ah = AhoCorasick.new(*words)
p ah