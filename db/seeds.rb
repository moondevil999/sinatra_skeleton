require_relative '../app/models/word'

filename = File.dirname(__FILE__) + "/../words"
f = File.open(filename, "r")
f.each_line do |line|
  w = line.gsub(/\n/,"").to_s
  Word.create(name:w)
end