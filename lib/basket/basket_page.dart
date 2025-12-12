import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  static final String routeName = '/basket_page';
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium Nutella',
          style: TextStyle(
            fontFamily: 'Varta',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(172, 121, 179, 1.0),
      ),
    );
  }
}
