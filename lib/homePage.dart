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

  VoidCallback? get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      

      body: Container(
        child: Center(
            child: Container( // Temos widgets singleRender e multirender, para desenhar elementos sobrepostos nesse exemplo usamos o single render Center, mas podemos usar também: Flex, align, Transform..
              height: 200,
              width: 200,
              color: Colors.black,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
            
            ),
            
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            number++;
          });
        },
      ),
    ); // Componente mais completo, temos quase um app inteiro pronto.
  }
}

// Arquivo do Homepage, componente com estadosm filho de appWidget.
