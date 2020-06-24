import 'package:flutter_test/flutter_test.dart';

void main(){
  tearDown((){
    print("I run once at the end of this test file.");
  });

  group("string", () {
    tearDown((){
      print("I run after each test in this group.");
    });

    test("simple test", () {
      var string = "a,b,c,d,e";

      expect(string.split(","), equals(["a", "b", "c", "d", "e"]));
    });

    test("another simple test", () {
      var string = "  a,b,c,d,e  ";

      expect(string.trim(), equals("a,b,c,d,e"));
    });
  });
}