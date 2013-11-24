# Problem 5
# =========
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

billion = 1000000000
million = 1000000
thousand = 1000
hundred = 100
max = 5 * hundred * million
itt = 0
range = [1..20]

get_remainder = (divisor, num) ->
	num % divisor

check_term = (term) ->
	for divisor in range
		get_remainder divisor, term

while(++itt && itt < max)
	break if check_term(itt).join('') is '00000000000000000000'

console.log itt