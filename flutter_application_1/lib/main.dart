import 'package:flutter/material.dart';
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.comfortable,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.ac_unit)),
                Tab(child: Icon(Icons.access_alarm_outlined)),
                Tab(child: Icon(Icons.ac_unit)),
              ],
            ),
            title: Text("widget.title"),
          ),
          body: TabBarView(
            children: [
              Center(child: Icon(Icons.ac_unit)),
              Center(child: Icon(Icons.access_alarm_outlined)),
              Center(child: Icon(Icons.ac_unit)),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.credit_card),
          ),
        ),
      ),
    );
  }
}
