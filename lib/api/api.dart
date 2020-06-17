import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:se_eportfolio_example/api/objects/DateFact.dart';
import 'package:se_eportfolio_example/api/objects/YearFact.dart';

import 'objects/NumberFact.dart';

class API{

  static Future<http.Response> _getRequest(String query){
    Map<String,String> headers = {
      "Accept": "application/json",
      "x-rapidapi-host": "numbersapi.p.rapidapi.com",
      "x-rapidapi-key": "fd22a6db3cmshd12be4bd1ece561p10345fjsnd38d6cd59c0e",
      "useQueryString": "true"
    };

    return http.get('https://numbersapi.p.rapidapi.com/' + query, headers: headers);
  }

  static Future<DateFact> getDateFact(int month, int day) async{
    var response = await _getRequest('$month/$day/date?json=true&fragment=true');

    if(response.statusCode == 200){
      return DateFact.fromJson(jsonDecode(response.body));
    }
    print(response.statusCode);
  }

  static Future<NumberFact> getNumberFact(int number) async{
    var response = await _getRequest('$number/math?json=true&fragment=true');

    if(response.statusCode == 200){
      return NumberFact.fromJson(jsonDecode(response.body));
    }
    print(response.statusCode);
  }

  static Future<YearFact> getYearFact(int year) async{
    var response = await _getRequest('$year/year?json=true&fragment=true');

    if(response.statusCode == 200){
      return YearFact.fromJson(jsonDecode(response.body));
    }
    print(response.statusCode);
  }

}