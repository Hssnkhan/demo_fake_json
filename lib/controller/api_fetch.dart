import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APImanager {
  static fetch1() async {
    try {
      var data = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
      var original = jsonDecode(data.body);
      return original;
      // print(original.runtimeType);
    } catch (e) {}
  }
}

/////pakage import
// class school {
//   static fetch2() async {
//     try {
//       var data1 = await http.get(Uri.parse("url"));
//       var new1 = jsonDecode(data1.body);
//     } catch (e) {
//       SnackBar(content: Text("This is coming  from the API"));
//     }
//   }
// }
