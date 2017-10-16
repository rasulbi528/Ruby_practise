def play_pass(str, n)
	final = ""
	result = str.upcase.tr "A-Z", ("A".."Z").to_a.rotate(n).join
	result = result.tr "0-9", ("9876543210").split.to_a.join
	result.split("").each_with_index {|v,i| final += i.odd? ? 
        v.downcase : v.upcase}.join
	puts final.reverse!
	end

play_pass("BORN IN 2015!",1)
