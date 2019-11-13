import 'main.dart';
import 'package:test/test.dart';

void main(){

  test("Test Case for Simplify", (){
    expect(simplify("88/44"), ("2/1"));
    expect(simplify("477/381"), ("159/127"));
    expect(simplify("1026/4478"), ("513/2239"));
  });
}