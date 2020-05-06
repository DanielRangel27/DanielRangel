import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_correio/Registrar_page.dart';

import 'entrar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: InicialPage(),
        ),
      ),
    );
  }
}


class InicialPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Bem Vindo!'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Center(
              child:Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,

                 children:[
                   ButtonTheme(
              height: 60.0,
             child: RaisedButton(
               color: Colors.cyanAccent[700],
              onPressed: () {
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (MeuForm())));
  
            },
  
            child: Text(
              'Entrar',
              style: TextStyle(color: Colors.black),
              ),
  
          ),
             ),
             Divider(),
                    ButtonTheme(
              height: 60.0,
             child: RaisedButton(
              color: Colors.cyanAccent[700],
              onPressed: () {
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (MeuForm2())));
  
            },
  
            child: Text(
              'Registrar',
              style: TextStyle(color: Colors.black),
              ),
  
          ),
             ),
                ]),
            ),
          ),
    );
  }
}




