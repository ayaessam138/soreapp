import 'package:flutter/material.dart';
import 'package:store/screens/homepage.dart';
import 'package:store/screens/updateproudct.dart';

void main() {
  runApp(const store());
}

class store extends StatelessWidget {
  const store({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homepage.homepageid,
      routes: {
        homepage.homepageid: (context) => homepage(),
        UpdateProductPage.id: (context) => UpdateProductPage()
      },
    );
  }
}
