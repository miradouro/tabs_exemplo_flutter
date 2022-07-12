import 'package:flutter/material.dart';
import './first_page.dart';
import './second_page.dart';
import './third_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "TabBar Tutorial",
        home:MainPage()),
      );
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 1",icon: Icon(Icons.home)),
              Tab(text: "Tab 2",icon: Icon(Icons.home)),
              Tab(text: "Tab 3",icon: Icon(Icons.home)),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ),
      ),
    );
  }
}