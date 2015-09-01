require 'aho_corasick'

words = %{ abc cba }

ah = AhoCorasick.new(*words)
p ah