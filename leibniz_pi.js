/// get_pi()
/// calculates PI to N digits using the Leibniz formula
/// note: this converges very slowly, you will need to set the max _very_ high
function get_pi(max) {
  max = max || 10000;
  var itt = 0,
      result = 0,
      denom = 3;
  while(++itt < max) {
    result += 1/denom * (itt%2==0?-1:1);
    denom += 2;
  }
  return (1 - result) * 4;
}
