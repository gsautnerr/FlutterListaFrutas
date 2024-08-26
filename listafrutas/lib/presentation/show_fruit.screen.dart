import 'package:flutter/material.dart';
import 'package:listafrutas/domain/fruit.dart';

class ShowFruitScreen extends StatelessWidget {
  final Fruit fruit;
  const ShowFruitScreen({super.key, required this.fruit});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Column(
        children: [
          Text(fruit.nome), 
          Text(fruit.preco)
          ],
      ),
    );
  }
}
