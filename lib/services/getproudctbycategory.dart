import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:store/helper.dart';
import 'package:store/models/proudct.dart';

class proudctbycategory {
  Future<List<dynamic>> getproudctbycategory(
      {required String categoryname}) async {
    List<dynamic> data = await api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryname');
    List<proudctmodel> getproudctbycategorylist = [];
    for (int i = 0; i < data.length; i++) {
      getproudctbycategorylist.add(proudctmodel.fromjsion(data[i]));
    }
    return getproudctbycategorylist;
  }
}
