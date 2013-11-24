# Problem 6
# =========
#
# The sum of the squares of the first ten natural numbers is,
#    1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
#    (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

sqr_sum = 0 # sum of the squares of the first 100 real numbers
sum = 0

range = [1..100]

for term in range
	sqr_sum += (term * term)
	sum += term

sum = sum * sum

console.log sum - sqr_sum
