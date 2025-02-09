import 'package:flutter/material.dart';
import 'package:listafrutas/datasource/fruit.mock.dart';
import 'package:listafrutas/domain/fruit.dart';
import 'package:listafrutas/presentation/show_fruit.screen.dart';
import 'package:listafrutas/snippets.dart';

class ListFruitScreen extends StatefulWidget {
  const ListFruitScreen({super.key});

  @override
  State<ListFruitScreen> createState() => _ListFruitScreenState();
}

class _ListFruitScreenState extends State<ListFruitScreen> {
  late List<Fruit> _fruits;
  @override
  void initState() {
    _fruits = fruitMock;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LISTA DE FRUTAS")),
      body: ListView.builder(
       
        itemCount: _fruits.length,
        itemBuilder: (context, index) {

          return InkWell(
            onTap: (){
              openRoute(context, ShowFruitScreen(fruit: _fruits[index]));
            },
            child: ListTile(
              title: Text(_fruits[index].nome),
              subtitle: Text(_fruits[index].preco),
            
            ),
          );
        }
        
        
        )
        
        );

  }
}
