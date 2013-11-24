# get_pi()
# calculates PI to N digits using the Leibniz formula
# note: this converges very slowly, you will need to set the max _very_ high
get_pi = (max) ->
  max ||= 10000
  itt = 0
  result = 0
  denom = 3

  while (++itt < max)
    mod = 1
    mod = -1 if itt % 2 == 0
    result += 1/denom * mod
    denom += 2
  (1 - result) * 4
