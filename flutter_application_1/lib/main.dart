import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/PersonWidget.dart';
import 'package:flutter_application_1/view/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void _incrementCounter() => print("");

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.comfortable,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.account_circle_outlined)),
                Tab(child: Icon(Icons.account_circle_outlined)),
                Tab(child: Icon(Icons.info_outline_rounded)),
              ],
            ),
            title: Text("Trabalho"),
          ),
          body: TabBarView(
            children: [
              const Center(child:
                PersonWidget(asset: "assets/images/ana.jpg",
                  name: "Ana Beatriz Barducco",
                  icon: Icon(Icons.star, color: Colors.purple,
                  ),
                description: "Bauducco antes da festa",),
              ),
              const Center(child:
                PersonWidget(
                    asset: "assets/images/joao.jpg",
                    name: "João Vitor Leite Machado",
                    icon: Icon(Icons.bed, color: Colors.purple ),
                    description: "Sid no espelho da loja",
                )
              ),
              Center(child: FittedBox(
                fit: BoxFit.fill,
                child: Container(
                  width: 300,
                  child: Column(
                    children: [
                      FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset("assets/images/romance.jpg")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('''
É um aplicativo em que o casal registra suas preferências de gênero de filmes e de snacks e a partir dessas informações, a aplicação sugere um date com um filme e snack que agrade ambos.                      ''', softWrap: true,),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),

        ),
      ),
    );
  }
}
