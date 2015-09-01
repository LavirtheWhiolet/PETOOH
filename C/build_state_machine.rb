require 'aho_corasick'

words = %W{ abc cba }

ah = AhoCorasick.new(*words)
p ah