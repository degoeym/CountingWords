=begin
File.open('speech.txt') do |f|
    f.each_line do |line|
        words = line.split(/\s+/)
        count = Hash.new(0)
        words.each { |word| count[word] += 1 }
        count = count.sort_by { |x,y| y }
        count.reverse!
        count.each { |word, count| puts count.to_s + "-" + word }
    end
end
=begin
File.open('speech.txt') do |f|
	f.each_line do |line|
		words = line.split(/\s+/).length
		count = Hash.new(0)
		words.each { |word| count[word] += 1 }
		count = count.sort_by { |x,y| y }
		count.reverse!
		count.each { |word, count| puts count.to_s + "-" + word }
	end
end
=end

File.readlines('speech.txt').each do |line|
	words = line.split(/\W+/)
	count = Hash.new(0)
	words.each { |w| 
		if count.has_key?(w)
			count[w] = count[w] + 1
		else
			count[w] = 1
		end
	}
	count = count.sort_by { |x, y| y }
	count.reverse
	count.each { |word, count| puts count.to_s + "-" + word }
end

=begin
words.each do |word|
	count = Hash.new(0)
	count[word] += 1
	count = count.sort_by { |x,y| y }
	count.reverse
	count.each { |word, count| puts count.to_s + "-" + word }[0..20]
end
=end