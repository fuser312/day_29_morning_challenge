
import 'dart:math';
// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"

String simplify(String number){
  List numAndDen = (number.split('/'));
  int num = int.parse(numAndDen[0]);
  int den = int.parse(numAndDen[1]);
  int factor = calculateHcf(num, den);
  num = num~/factor;
  den = den~/factor;
  return(num.toString() + '/' + den.toString());
}

int calculateHcf(int x, int y){
  int smaller = min(x, y);
  int hcf;
  for (int i = 1; i< smaller+1; i++){
    if(x%i == 0 && y%i == 0){
      hcf = i;
    }
  }
  return hcf;
}

main() {
  print(simplify("4/6"));

}
