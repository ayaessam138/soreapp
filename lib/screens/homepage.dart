import 'package:flutter/material.dart';
import 'package:store/models/proudct.dart';
import 'package:store/services/getallproudcts.dart';

import '../weidght/customcard.dart';

class homepage extends StatefulWidget {
  static String homepageid = 'homepage';

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.shopping_bag,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child: FutureBuilder<List<proudctmodel>>(
          future: getallproudcts().fetchallproudcts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(',,,,lllllllllllllllllllllllllllllllll');
              print(snapshot.data!.first.id);
              List<proudctmodel> proudcts = snapshot.data!;
              return GridView.builder(
                itemCount: proudcts.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100),
                itemBuilder: (context, int index) {
                  return customcard(
                    proudct: proudcts[index],
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
