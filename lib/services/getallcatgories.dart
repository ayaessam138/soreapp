import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/helper.dart';

class allcatgories {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
