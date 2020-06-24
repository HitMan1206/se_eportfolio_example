import 'package:flutter_test/flutter_test.dart';
import 'package:se_eportfolio_example/api/api.dart';

void main(){

  group("api", (){

    test("get date fact", () async {

      var result = await API.getDateFact(5, 10);

      expect(result, isNotNull);
      expect(result.type, "date");
    });

    test("get math fact", () async {
      
      var result = await API.getNumberFact(1729);
      
      expect(result, isNotNull);
      expect(result.text, "the smallest natural number representable in two different ways as a sum of two positive cubes, as Ramanujan stated on the spot");
      expect(result.number, 1729);
      expect(result.type, "math");
    });
  });


}