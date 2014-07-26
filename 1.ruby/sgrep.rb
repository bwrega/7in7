	def sgrep(filename, pattern)
		i=1
		File.open(filename, 'r') do |f|
			f.each_line do |line|
				i=i+1
				puts "#{i}. #{line}" if pattern.match(line)
			end
		end
	end
