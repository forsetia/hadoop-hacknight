def go
  ARGF.each do |line|
    line = line.chomp
#    fields = line.split("\t")
	#song title = col 51.
  end
end

def tokenize string
  string.split(/\s+/).map do |token|
    stripped = token.gsub(/[^a-zA-Z0-9\']+/, '')
    stripped.downcase
  end
end

def acceptable? token
  (3..100).include?(token.length)
end

go
