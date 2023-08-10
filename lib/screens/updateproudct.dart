// import 'package:flutter/material.dart';
// import 'package:store/models/proudct.dart';
// import 'package:store/weidght/custombutton.dart';
// import 'package:store/weidght/textfield.dart';
// import 'package:store/services/updateproudct.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// class updateproudct extends StatefulWidget {
//   static String updateproudctid = 'updateproudct';

//   @override
//   State<updateproudct> createState() => _updateproudctState();
// }

// class _updateproudctState extends State<updateproudct> {
//   String? proudctname, description, image, price;

//   bool isloading = false;

//   @override
//   Widget build(BuildContext context) {
//     proudctmodel proudct =
//         ModalRoute.of(context)!.settings.arguments as proudctmodel;
//     return ModalProgressHUD(
//       inAsyncCall: isloading,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Update Proudct',
//             style: TextStyle(color: Colors.black),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 100,
//                 ),
//                 textfield(
//                   onchanged: (value) {
//                     proudctname = value;
//                   },
//                   hinttext: 'Proudct Name',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield(
//                   onchanged: (value) {
//                     description = value;
//                   },
//                   hinttext: 'Description',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield(
//                   inputType: TextInputType.number,
//                   onchanged: (value) {
//                     price = value;
//                   },
//                   hinttext: 'Price',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 textfield(
//                   onchanged: (value) {
//                     image = value;
//                   },
//                   hinttext: 'image',
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 custombutton(
//                   text: 'Update Proudct',
//                   ontap: () async {
//                     isloading = true;
//                     setState(() {});

//                     try {
//                       await updateproudct(proudct);
//                       print('sucesss');
//                     } catch (e) {
//                       print(e.toString());
//                     }
//                     isloading = false;
//                     setState(() {});
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> updateproudct(proudctmodel proudct) async {
//     await UpdateProductService().updateProduct(
//         title: proudctname == null ? proudct.title : proudctname!,
//         price: price == null ? proudct.price : price!,
//         desc: description == null ? proudct.description : description!,
//         image: image == null ? proudct.image : image!,
//         id: proudct.id,
//         category: proudct.category);
//   }
// }
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:store/models/proudct.dart';

import 'package:store/services/updateproudct.dart';
import 'package:store/weidght/custombutton.dart';
import 'package:store/weidght/textfield.dart';

class UpdateProductPage extends StatefulWidget {
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    proudctmodel product =
        ModalRoute.of(context)!.settings.arguments as proudctmodel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                textfield(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                textfield(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'description',
                ),
                SizedBox(
                  height: 10,
                ),
                textfield(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                textfield(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(
                  height: 70,
                ),
                custombutton(
                  text: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);

                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(proudctmodel product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
