import 'package:store/helper.dart';
import 'package:store/models/proudct.dart';

class Addproudct {
  Future<proudctmodel> addprouct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    return proudctmodel.fromjsion(data);
  }
}
