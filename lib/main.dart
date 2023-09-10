// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:fruitapp/ProfileScreen.dart';
import 'package:fruitapp/user.dart';
import 'counter.dart';
import 'image_carrousel.dart';
import 'car.dart';
import 'CartScreen.dart';

final Cart cart = Cart();
/*
void main() {
  runApp(const FirstScreen());
}
*/
void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }
  
void _openProfile() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfileScreen(user: currentUser)),
  );
}




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 81, 22, 177),
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Color.fromARGB(255, 0, 0, 0),
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(190, 242, 241, 247),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
            
            ),
            const SizedBox(
              width: 20.0,
            ),
            IconButton(
    icon: const Icon(
      Icons.person,
      color: Color.fromARGB(190, 242, 241, 247),
    ),
    onPressed: _openProfile, ),
],

          
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 81, 22, 177),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'JOSEPH SHOP´S RB23',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('1 producto'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const CounterDesign(), // Asegúrate de tener un widget CounterDesign aquí
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Descripcion',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Productos Importados. '
                            '  Posiblemente bajados del tren. '
                            ' Estilo 10 de 10 '
                            'Animese viejon',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Column(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(color: Color.fromARGB(255, 185, 7, 7)),
                                ),
                                height: 70.0,
                                child: ElevatedButton.icon(
                                  icon: Icon(
                                    _isFavorited
                                        ? Icons.favorite_border
                                        : Icons.favorite,
                                    color: const Color.fromARGB(255, 255, 79, 79),
                                  ),
                                  label: const Text('Favorito'),
                                  onPressed: _toggleFavorite,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //cart.addItem('NomProd');
                                    final productName =
                                        'Puma A1';
                                    final price = 10.0;
                                    cart.addItem(productName, price);
                                  },
                                  child: const Text(
                                    'Agregar al carrito A1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //cart.addItem('NomProd');
                                    final productName = 'Puma A2';
                                    final price = 10.0;
                                    cart.addItem(productName, price);
                                  },
                                  child: const Text(
                                    'Agregar al carrito A2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //cart.addItem('NomProd');
                                    final productName = 'Puma A3';
                                    final price = 10.0;
                                    cart.addItem(productName, price);
                                  },
                                  child: const Text(
                                    'Agregar al carrito A3',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
