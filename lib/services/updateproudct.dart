import 'package:store/helper.dart';

import 'package:store/models/proudct.dart';

class UpdateProductService {
  Future<proudctmodel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    print('product id  = $id');
    Map<String, dynamic> data =
        await api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });

    return proudctmodel.fromjsion(data);
  }
}
