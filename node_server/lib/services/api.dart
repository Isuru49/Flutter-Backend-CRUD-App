import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://10.11.18.99/api/";

  static addproduct(Map pdata) async {
    print(pdata);
    var url = Uri.parse("${baseUrl}add_product");

    try {
      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);

        //
      } else {
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}