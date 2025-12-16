import 'package:amora_client/components/card.dart';
import 'package:amora_client/dto/basket_dto.dart';
import 'package:amora_client/services/api_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<BasketDto>> futureBaskets;

  @override
  void initState() {
    super.initState();
    futureBaskets = ApiService().fetchBaskets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amora',
          style: TextStyle(
            fontFamily: 'Varta',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(172, 121, 179, 1.0),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 90,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 30.0,
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(172, 121, 179, 1.0),
              ),
              child: const Text(
                'Menu Amora',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            ListTile(
              title: const Text('Fazer pedido', style: TextStyle(fontSize: 18)),

              leading: const Icon(Icons.shopping_bag),

              onTap: () {
                print('ir para o whatsapp');

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<BasketDto>>(
        future: futureBaskets,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Carregando
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}')); // Erro
          } else if (snapshot.hasData) {
            return displayList(snapshot.data!); // Dados carregados
          } else {
            return Center(child: Text('Nenhum dado encontrado.'));
          }
        },
      ),
    );
  }

  ListView displayList(List<BasketDto> baskets) {
    return ListView.builder(
      itemCount: baskets.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
            child: Center(
              child: Text(
                'Produtos disponíveis',
                style: TextStyle(
                  fontFamily: 'Varta',
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ),
          );
        }

        final productIndex = index - 1;
        final productData = baskets[productIndex];

        return BCard(
          id: productData.id,
          title: productData.name,
          price: productData.price,
          description: productData.description,
          imagePath: productData.photoId,
        );
      },
    );
  }
}
