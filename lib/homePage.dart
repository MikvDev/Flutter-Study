// StateFullWidget - Widgets com estatos que mudam
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var number = 0;
  bool isDarkTheme = false;
  VoidCallback? get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('This is a appSidebar sample!')),

    

      body: Container(child: Center(child: Switch(value: isDarkTheme, onChanged: (value) {
        setState(() {
          isDarkTheme = false
        });
      }}),)),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            number++;
          });
        },
      ),

  
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'User',
          ),
        ],
      ),

    ); // Componente mais completo, temos quase um app inteiro pronto.
  }
}

// Arquivo do Homepage, componente com estadosm filho de appWidget.
