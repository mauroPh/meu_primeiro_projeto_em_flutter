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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task(
              'Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            ),
            Task(
              'Estudar SQL',
              'https://cdn.pixabay.com/photo/2017/07/31/11/46/laptop-2557586_960_720.jpg',
            ),
            Task(
              'Estudar C#',
              'https://cdn.pixabay.com/photo/2017/07/31/14/45/code-2558220_960_720.jpg',
            ),
            Task(
              'Caminhar',
              'https://cdn.pixabay.com/photo/2020/01/21/11/39/running-4782722_960_720.jpg',
            ),
            Task(
              'Treinar Inglês(conversação)',
              'https://cdn.pixabay.com/photo/2019/05/20/13/15/webinar-4216601_960_720.jpg',
            ),
            Task(
              'Treinar Inglês(conversação)',
              'https://cdn.pixabay.com/photo/2019/05/20/13/15/webinar-4216601_960_720.jpg',
            ),
            Task(
              'Treinar Inglês(conversação)',
              'https://cdn.pixabay.com/photo/2019/05/20/13/15/webinar-4216601_960_720.jpg',
            ),
            Task(
              'Treinar Inglês(conversação)',
              'https://cdn.pixabay.com/photo/2019/05/20/13/15/webinar-4216601_960_720.jpg',
            ),
            Task(
              'Treinar Inglês(conversação)',
              'https://cdn.pixabay.com/photo/2019/05/20/13/15/webinar-4216601_960_720.jpg',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String picture;

  const Task(this.name, this.picture, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 210,
                        height: 150,
                        child: Image.network(
                          widget.picture,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'UP',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Nivel:$nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
