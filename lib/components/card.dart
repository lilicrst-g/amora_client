import 'package:amora_client/basket/basket_page.dart';
import 'package:flutter/material.dart';

class BCard extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String description;
  final String? imagePath;

  const BCard({
    super.key, 
    required this.id, 
    required this.title, 
    required this.price, 
    required this.description, 
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      
      child: InkWell(
        onTap: () {
          print('Card de Produto Clicado: $title'); 
          Navigator.of(context).pushNamed(BasketPage.routeName, arguments: {
            'id': id,
            'title': title,
            'price': price,
            'description': description,
            'imagePath': imagePath,
          }); 
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imagePath ?? ''), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              const SizedBox(height: 10),

              Text(
                title, 
                style: const TextStyle(
                  fontFamily: 'Varta',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              
              const SizedBox(height: 5),
              
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "R\$ ${price.toStringAsFixed(2)}", 
                  style: const TextStyle(
                    fontFamily: 'Varta',
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}