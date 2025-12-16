import 'package:flutter/material.dart';

class BasketPage extends StatefulWidget {
  static const String routeName = '/basket_page';

  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  String id = '';
  String title = 'Cesta de Presente Premium';
  double price = 227.90;
  String description =
      "Esta cesta exclusiva é a combinação perfeita de sofisticação e sabor. Inclui uma seleção de vinhos tintos premium, chocolates belgas artesanais, biscoitos finos e uma linda embalagem reutilizável. Ideal para ocasiões especiais ou para um presente inesquecível. Garantia de frescor e alta qualidade.";
  String productImagePath = 'assets/images/cesta.jpg';
  final Color themeColor = const Color.fromRGBO(172, 121, 179, 1.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? '';
        title = param?['title'] ?? '';
        price = param?['price'] ?? 0;
        description = param?['description'] ?? '';
        productImagePath = param?['imagePath'] ?? '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Varta',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: themeColor,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 430,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(productImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "R\$ ${price.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontFamily: 'Varta',
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: themeColor,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Itens:',
                    style: TextStyle(
                      fontFamily: 'Varta',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            print('BOTÃO COMPRAR CLICADO! Produto: $title');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: themeColor,
            padding: const EdgeInsets.symmetric(vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Comprar Agora',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
