import 'package:flutter/material.dart';


class BotoesPage extends StatefulWidget {
  @override
  _BotoesPageState createState() => _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new DefaultTabController(
        length: 5, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Botões Page'),
            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Raised'),
                Tab(text: 'Flat'),
                Tab(text: 'Outline'),
                Tab(text: 'Icon'),
                Tab(text: 'Action'),
              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
                Text('Raised'),
                Text('Flat'),
                Text('Outline'),
                Text('Icon'),
                Text('Action'),
            ],
          ),
        ),
      ),
    );
  }
}