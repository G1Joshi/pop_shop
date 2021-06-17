import 'package:flutter/material.dart';
import 'package:pop_shop/home.dart';

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
        accentColor: Color(0xFF009fff),
      ),
      home: Home(),
    );
  }
}
