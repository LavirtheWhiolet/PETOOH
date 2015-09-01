require 'aho_corasick'

words = %W{ ac ad }

ah = AhoCorasick.new(*words)
p ah