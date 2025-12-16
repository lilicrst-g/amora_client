import 'package:amora_client/basket/basket_page.dart';
import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  final String title;
  final double price;
  final String description;
  final String imagePath;

  const BasketCard({
    super.key, 
    required this.title, 
    required this.price, 
    required this.description, 
    required this.imagePath,
  });
    

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: () {
        print('Card de Produto Clicado: $title'); 
        Navigator.of(context).pushNamed(BasketPage.routeName); 
      },
      child: Container(
        width: 380,
        height: 340,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(10),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imagePath), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Título
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Varta',
                fontSize: 25,
                color: Colors.brown,
              ),
            ),
            // Detalhes (Itens e Preço)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "R\$ ${price.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontFamily: 'Varta',
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}