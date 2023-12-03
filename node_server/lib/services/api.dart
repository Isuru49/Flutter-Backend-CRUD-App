import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://10.11.18.99/api/";

  static addproduct(Map pdata) async {
    // ignore: avoid_print
    print(pdata);
    var url = Uri.parse("${baseUrl}add_product");

    try {
      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        // ignore: avoid_print
        print(data);
      } else {
        // ignore: avoid_print
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

//get method

  static getProduct() async {
    var url = Uri.parse("${baseUrl}get_product");

    try {
      final res = await http.get(url);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        // ignore: avoid_print
        print(data);
      } else {}
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
