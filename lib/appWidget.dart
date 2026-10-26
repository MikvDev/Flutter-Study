// Estendemos uma classe do objeto StateLess(Sem estado, sem alteração..)
import 'package:flutter/material.dart';
import 'package:helloworld/homePage.dart';

class AppWidget extends StatelessWidget {
  final String Title;

  const AppWidget({super.key, required this.Title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // primeiro widget para iniciar a aplicação
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,brightness: Brightness.dark
      ),
      home: HomePage(),
      
    );
  }
}

// Arquivo do AppWidget, componente pai.
