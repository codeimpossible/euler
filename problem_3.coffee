# Problem 3
# =========
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

is_prime = (num) ->
  return false if num % 2 == 0
 	return false if num % 3 == 0
 	itt = 4
 	max = Math.pow num, 0.5
 	while( ++itt <= max )
 		if itt % 3 != 0 or itt % 2 != 0
 			return false if num % itt == 0
 	true

factors = []
target = 600851475143
term = 0
while(++term <= target - 1)
	factors.push term if is_prime(term) and target % term == 0

console.log factors.pop()