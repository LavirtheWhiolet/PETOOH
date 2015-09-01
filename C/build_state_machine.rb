require 'aho_corasick'
require 'yaml'

words = %W{ ab bd }

ah = AhoCorasick.new(*words)
puts ah.to_yaml


# @root=#<TreeNode:0x93ea89c @parent=nil, @suffix=nil, @matches=[], @children={:a=>#<TreeNode:0x93ea7fc @parent=#<TreeNode:0x93ea89c ...>, @suffix=#<TreeNode:0x93ea89c ...>, @matches=[], @children={:b=>#<TreeNode:0x93ea7ac @parent=#<TreeNode:0x93ea7fc ...>, @suffix=#<TreeNode:0x93ea70c @parent=#<TreeNode:0x93ea89c ...>, @suffix=#<TreeNode:0x93ea89c ...>, @matches=[], @children={:d=>#<TreeNode:0x93ea6bc @parent=#<TreeNode:0x93ea70c ...>, @suffix=nil, @matches=["bd"], @children={}>}>, @matches=["ab"], @children={}>}>, :b=>#<TreeNode:0x93ea70c @parent=#<TreeNode:0x93ea89c ...>, @suffix=#<TreeNode:0x93ea89c ...>, @matches=[], @children={:d=>#<TreeNode:0x93ea6bc @parent=#<TreeNode:0x93ea70c ...>, @suffix=nil, @matches=["bd"], @children={}>}>}>>