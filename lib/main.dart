import 'package:class_10/set_state_file.dart';
import 'package:flutter/material.dart';

import 'Home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Home(),
        body: Home2(),
        // body: LearnSetState(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lst = ['Osama', 'Hamza', 'Ubaid', 'Agha', 'Uzaib', 'Mounis'];
  var age = ['21', '24', '23', '24', '20', '21'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Exxample'),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Header')),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  ////use GastureDetector for class
                  itemCount: lst.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(lst[index]),
                    );
                  }),
            ),
          ],
        ),
      ),
      // drawer: Drawer(
      //     child: ListView(
      //   children: [
      //     DrawerHeader(child: Text('Header')),
      //     ListTile(
      //       title: Text('Osama'),
      //     ),
      //     ListTile(
      //       title: Text('Hamza'),
      //     ),
      //   ],
      // )),

      //////////////////////////////GridView.count
      //     body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 50,
      //   mainAxisSpacing: 50,
      //   children: List.generate(lst.length, (index) {
      //     return Container(
      //       color: Colors.blue,
      //       child: Text(lst[index]),
      //     );
      //   }),
      // )

      //////////////////////////////////ListView.builder
      // body: ListView.builder(
      //     itemCount: lst.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(lst[index]),
      //         subtitle: Text(age[index]),
      //       );
      //     }),
    );
  }
}
