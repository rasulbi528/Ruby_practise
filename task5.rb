NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
	L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }
	
def solution(number)
	return '' if number <= 0
	NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end

puts solution(456)



