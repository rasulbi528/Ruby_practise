class RPNCalculator
  
	def sum(array)
		result = 0
		array.each do |i|
			result += i.to_i
		end
		result
	end

	def product(array)
		result = 1
		array.each do |i|
			result *= i.to_i
		end
		result
	end

	def difference(array)
		if array.length < 2
			0
		else
			array[0].to_i - array[1].to_i
		end
	end

     
	def evaluate(expression)
		expression_array = expression.split
		operands = []

		if expression_array.length == 1
			evaluation = expression_array
		end

		expression_array.each do |i|
			if i.match(/[0-9]/) != nil
				operands.push(i)
			elsif i == "+"
				operands.push(sum(operands.pop(2)))
			elsif i == "*"
				operands.push(product(operands.pop(2)))
			elsif i == "-"
				operands.push(difference(operands.pop(2)))
			end
		end
		puts operands
	end
end

ras=RPNCalculator.new

ras.evaluate( "5 1 2 + 4 * + 3 - ")
