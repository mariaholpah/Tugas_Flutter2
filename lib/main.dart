import 'package:flutter/material.dart';

void main() => runApp(myApp());

class  myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'belajar flutter',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(), 
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
        }),
        backgroundColor: Colors.deepPurple,
        title: Text(
          'mariah olpah App',
          style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search_off_outlined),
          tooltip: 'Open Search',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert_outlined),
          tooltip: 'Open More',
          alignment: Alignment.centerRight,
          onPressed: () {},
        ),
        ],
       actionsIconTheme: IconThemeData(color: Colors.black),
       centerTitle: true,
      ), 
      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.all(30),
        child: Icon(
          Icons.home,
          color: Colors.red,
          size: 100.78,
        ),
   ),
    );
  }
}