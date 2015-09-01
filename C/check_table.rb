require 'yaml'

machine = begin
  x = YAML.load("#{File.dirname __FILE__}/table.yaml")
end