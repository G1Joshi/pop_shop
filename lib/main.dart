import 'package:flutter/material.dart';
import 'package:pop_shop/views/home.dart';

void main() {
  runApp(PopShop());
}

class PopShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pop Shop',
      theme: ThemeData(
        primaryColor: Color(0xFF1e90ff),
        accentColor: Color(0xFF00bfff),
      ),
      home: Home(),
    );
  }
}
