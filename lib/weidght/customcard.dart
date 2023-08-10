import 'package:flutter/material.dart';
import 'package:store/models/proudct.dart';
import 'package:store/screens/updateproudct.dart';

class customcard extends StatelessWidget {
  customcard({
    required this.proudct,
    super.key,
  });
  proudctmodel proudct;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: proudct);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 20,
                  offset: Offset(1, 1))
            ]),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      proudct.title.substring(0, 6),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${proudct.price.toString()}',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 32,
              bottom: 80,
              child: Image.network(
                proudct.image,
                // proudct.image,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
