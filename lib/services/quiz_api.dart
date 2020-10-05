import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_app/models/question.dart';

class QuizApi {
  static Future<List<Question>> fetch() async {
    try {
      var url = 'https://script.google.com/macros/s/AKfycbxtI4w2x4H-ByK_OGNhz6IVIL0dRStFkAdtpPjHX5vtDb283oY5/exec';
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return List<Question>.from(
            data["questions"].map((x) => Question.fromMap(x)));
      } else {
        return List<Question>();
      }

    } catch (error) {
      print(error);
      return List<Question>();
    }
  }
}