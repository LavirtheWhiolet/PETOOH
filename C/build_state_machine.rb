require 'aho_corasick'

words = %W{ ab bd }

ah = AhoCorasick.new(*words)
p ah