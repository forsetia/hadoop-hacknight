def go
  prev_key = nil
  key_total = 0
  keyword = "thou"
  ARGF.each do |line|
    line = line.chomp
    # split key and value on space character
    words = line.split(/\s/)

#should print thou and count of occurences on a line

	words.each do |word| 
		next unless word.downcase == keyword
		key_total += 1;
  	end
	
	if key_total > 0
		puts "#{keyword}\t1" 
	end	
	

    # check for new key
#    if prev_key && key != prev_key && key_total > 0
#
#      # output total for previous key
#
#      # <key><tab><value><newline>
#      puts prev_key + "\n" + key_total.to_s
#
#      # reset key total for new key
#      prev_key = key
#      key_total = 0
#
#    elsif ! prev_key
#      prev_key = key
#
    end
    # add to count for this current key
end

go
