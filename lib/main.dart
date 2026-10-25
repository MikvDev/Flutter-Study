import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   const MaterialApp(
  //     home: Scaffold(body: Center(child: Text("Hello world!"))),
  //   ),
  // );
  runApp(AppWidget(Title: 'Teste'));
}

// Estendemos uma classe do objeto StateLess(Sem estado, sem alteração..)
class AppWidget extends StatelessWidget {
  final String Title;

  const AppWidget({super.key, required this.Title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // primeiro widget para iniciar a aplicação
      // theme: ThemeData(primarySwatch: Color.red),
      home: HomePage(),
    );
  }
}

// StateFullWidget - Widgets com estatos
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text("Numero:$number"),
           onTap: () {
            setState(() { // Necessario para reconstruir o componente, avisa ao pai para atualizar o valor number.
              
            number++;
          
            });
          },
        ),
      ),
    );
  }
}
