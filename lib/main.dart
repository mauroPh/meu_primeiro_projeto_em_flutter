import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.blue,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.cyan,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.pinkAccent,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.purple,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Container(
                  color: Colors.amber,
                  height: 30,
                  width: 30000,
                  child: Text(
                    'Lorem Ipsum',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print('Você clicou no botão!');
                    },
                    child: Text('Clique no botão!'))
              ]),
        ));

    /*Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.blue,width: 100,height: 100,),
          Container(color: Colors.red,width: 50,height: 50,),
        ],
      )*/

    /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Container(color: Colors.blue,width: 100,height: 100,),
            Container(color: Colors.red,width: 50,height: 50,),
          ],
      )*/

    /*Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(color: Colors.blue,width: 100,height: 100,),
          Container(color: Colors.red,width: 50,height: 50,),
        ],
      ),*/
    /* Container não consegue se alinhar na tela ou colocar outro Container na frente dele,
      mas com o Stack(), ou com alguns outros Widgets, temos essa possibilidade.
      Container ao lado do outro. Não conseguimos fazer isso com o Stack()
    );*/
  }
}
