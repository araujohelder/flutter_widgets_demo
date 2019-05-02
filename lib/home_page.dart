import 'package:flutter/material.dart';
import 'botoes_page.dart';
import 'listas_page.dart';
import 'cards_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red
              ),
              accountName: Text('Helder da Silva Araujo'),
              accountEmail: Text('heldersilvaaraujo@gmail.com'),
              currentAccountPicture: GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a-/AAuE7mAVOWwoxJkkNef0oWVqh3QBlgJluum-4OWSx5CHIg'),
                ),
              ),
            ),
            ListTile (
              title: Text('Botões'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> BotoesPage()));
              },
            ),
            Divider(),
            ListTile (
              title: Text('Listas'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> ListasPage()));
              },
            ),
            Divider(),
            ListTile (
              title: Text('Cards'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> CardsPage()));
              },
            ),
            Divider(),
            ListTile (
              title: Text('Cancelar'),
              trailing: Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: Center(
        child: Text("Olá Mundo!"),
      ),
    );
  }
}
