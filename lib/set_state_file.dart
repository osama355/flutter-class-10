import 'package:flutter/material.dart';

class LearnSetState extends StatefulWidget {
  const LearnSetState({Key? key}) : super(key: key);

  @override
  _LearnSetStateState createState() => _LearnSetStateState();
}

class _LearnSetStateState extends State<LearnSetState> {
  var text = '';

  one() {
    setState(() {
      text = '1';
    });
  }

  two() {
    setState(() {
      text = '2';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text('Text $text'),
            SizedBox(height: 10),
            ElevatedButton(onPressed: one, child: Text('Press 1')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: two, child: Text('Press 2')),
          ],
        ),
      ),
    );
  }
}
