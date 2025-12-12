import 'package:amora_client/basket/basket_page.dart';
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
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(172, 121, 179, 1.0),
      ),
      drawer: Drawer(child: Text('Fale Conosco')),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(BasketPage.routeName);
          },
          child: Column(
            children: [
              Text(
                'Produtos disponíveis',
                style: TextStyle(
                  fontFamily: 'Varta',
                  fontSize: 20,
                  color: Colors.black54,
                ),
                ),
              Container(
                width: 380,
                height: 340,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(10),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //width: 340,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/cesta.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Bom dia",
                      style: TextStyle(
                        fontFamily: 'Varta',
                        fontSize: 25,
                        color: Colors.brown,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Itens: todos os itens descritos com...",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "R\$ 227.90",
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
            ],
          ),
        ),
      ),
    );
  }
}
