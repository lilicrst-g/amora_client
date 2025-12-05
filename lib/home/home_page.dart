import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amora', 
          style: TextStyle(
            fontFamily: 'Varta',
            fontSize: 30,
            color: Colors.white
          ),
        ),
        backgroundColor: Color.fromRGBO(172, 121, 179, 1.0),
      ),
      drawer: Drawer(
        child: Text('Fale Conosco'),
      ),
      body: Center(
        child: Container(
          width: 380,
          height: 300,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cesta.jpg'),
                fit: BoxFit.cover)
            ),
          ),
        ),
      )
    );
  }
}