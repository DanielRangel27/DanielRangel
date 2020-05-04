import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_correio/principal_page_page.dart';

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
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (EntrarPage())));
  
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
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (Registrarpage())));
  
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

class EntrarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Entrar'),
      ),
      body: Padding(
              padding: EdgeInsets.all(11),
       child: Center(       
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,

            children:[  
  
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Email'),
  
            ),
            Divider(),
            TextFormField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Senha'),
  
            ),
            Divider(),
            ButtonTheme(
              height: 60.0,
             child: RaisedButton(
               color: Colors.cyanAccent[700],
              onPressed: () {
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (Principalpage())));
              return Principalpage();
  
            },
  
            child: Text(
              'Continuar',
              style: TextStyle(color: Colors.black),
              ),
  
          ),
             ),
         ],
          ),
        ),
      ),
        );
  }
}

class Registrarpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Entrar'),
      ),
      body: Padding(
              padding: EdgeInsets.all(11),
       child: Center(       
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,

            children:[  
              TextFormField(
              autofocus: true,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Nome'),
  
            ),
             Divider(),
  
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Email'),
  
            ),
            Divider(),
            TextFormField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Senha'),
  
            ),
            Divider(),
            ButtonTheme(
              height: 60.0,
             child: RaisedButton(
               color: Colors.cyanAccent[700],
              onPressed: () {
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (Principalpage())));
              return Principalpage();
  
            },
  
            child: Text(
              'Continuar',
              style: TextStyle(color: Colors.black),
              ),
  
          ),
             ),
         ],
          ),
        ),
      ),
        );
  }
}