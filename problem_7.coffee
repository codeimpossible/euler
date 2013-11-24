# Problem 7
# =========
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

is_prime = (num) ->
  return false if num % 2 == 0 or num % 3 == 0
 	itt = 4
 	max = Math.pow num, 0.5
 	while( ++itt <= max )
 		if itt % 3 != 0 or itt % 2 != 0
 			return false if num % itt == 0
 	true

itt = -1
prime_counter = 1
while(++itt >= 0)
	prime_counter++ if is_prime itt
	break if prime_counter is 10001

console.log "#{prime_counter}st prime is #{itt}."