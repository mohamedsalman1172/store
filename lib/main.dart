import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/update_product_screen.dart';

void main() {
  runApp(StorApp());
}

class StorApp extends StatelessWidget {
  const StorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductScreen.id: (context) => UpdateProductScreen(),
      },
    );
  }
}
