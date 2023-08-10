import 'dart:convert';

import 'package:store/helper.dart';
import 'package:store/models/proudct.dart';
import 'package:http/http.dart' as http;

// 1- get req 2-decode response to list 3-convert all values in that list to proudct model then store them in list
class getallproudcts {
  Future<List<proudctmodel>> fetchallproudcts() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products');
    List<proudctmodel> proudctlist = [];
    //list sore the decoded list in form of prouctmodel that we create to fetch data in that shape
    for (int i = 0; i < data.length; i++) {
      proudctlist.add(proudctmodel.fromjsion(data[i]));
    }
    return proudctlist;
  }
}
