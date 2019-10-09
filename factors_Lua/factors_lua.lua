--cerner_2^5_2019
--This program prints the factors of 32.
function get_all_factors(number)
	local factors = {}
	for possible_factor=1, math.sqrt(number), 1 do
		local remainder = number%possible_factor
		
		if remainder == 0 then
			local factor, factor_pair = possible_factor, number/possible_factor
			table.insert(factors, factor)
			
			if factor ~= factor_pair then
				table.insert(factors, factor_pair)
			end
		end
	end	
	table.sort(factors)
	return factors
end
the_universe = 32
factors_of_the_universe = get_all_factors(the_universe)
print("Count_cerner_2^5_2019",	"The Factors of Life, the Universe, and Everything")
table.foreach(factors_of_the_universe, print)