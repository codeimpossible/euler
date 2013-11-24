# Problem 4
# =========
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

String::reverse = () ->
	this.split('').reverse().join ''

is_palindrome = (num) ->
	"#{num}" == "#{num}".reverse()

check_palindrome = () ->
	palindrome = 0

	for term_a in [999..100] by -1
		for term_b in [999..100] by -1
			fact = term_a * term_b
			palindrome = fact if is_palindrome(fact) and fact > palindrome
	palindrome

console.log check_palindrome()