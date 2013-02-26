def go
  prev_key = nil
  key_total = 0
  ARGF.each do |line|
    line = line.chomp
    # split key and value on space character
    (key, value) = line.split(/\s/)

#should print thou and count of occurences.
#currently prints one per occurence, rather than using a regex etc. 

	words.each do |word| 
		puts "#{word}\t1" if word.downcase == "thou"	

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
#    end
#
    # add to count for this current key
    key_total += value.to_i
  end
end

go
