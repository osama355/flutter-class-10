import 'package:class_10/login.dart';
import 'package:class_10/sign.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
            bottom: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('Sign up'),
                  ),
                  Tab(
                    child: Text('Login'),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Login(),
              Sign(),
            ],
          ),
        ));
  }
}
