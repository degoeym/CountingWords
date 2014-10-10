File.open('speech.txt') do |f|
    f.each_line do |line|
        words = line.split(/[^a-zA-Z]/)
        count = Hash.new(0)
        words.each { |word| count[word] += 1 }
        count = count.sort_by { |x,y| y }
        count.reverse!
        count.each { |word, count| puts count.to_s + "-" + word }
    end
end