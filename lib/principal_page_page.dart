import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_correio/segunda_page.dart';


final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(Principalpage());
}
class Principalpage extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Principalpage> {
  var currentPage = 0;
  
  final List<Widget> pages = [
  ];
  GlobalKey scaffoldKey = GlobalKey() ;
  
  goToPage(int index) {
    Navigator.pop(scaffoldKey.currentContext);
    setState(() => currentPage = index);
    
  }
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
        title: Text('Produto'),
          ),
        body: Padding(
                      padding: const EdgeInsets.all(11.0),

          child:Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
           ButtonTheme(
              height: 60.0,
             child: RaisedButton(
               color: Colors.cyanAccent[700],
              onPressed: () {
  
              Navigator.pop(context);
  
            },
  
            child: Text(
              'Criar Pedido',
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
  
              Navigator.pop(context);
  
            },
  
            child: Text(
              'Retirar Pedido',
              style: TextStyle(color: Colors.black),
              ),
  
          ),
             ),
                 ]),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Nome do Usuario')  ,
                accountEmail: Text('email@gmail.com'),
            ),
              ListTile(
               title: Text('Criar Pedido'),
                onTap: () => goToPage(0),
                selected: currentPage == 0,
              ),
              ListTile(
               title: Text('Retirar Pedido'),
                onTap: () => goToPage(1),
                selected: currentPage == 1,
              ),
              ListTile(
               title: Text('outra pagina'),
                onTap: () {
  
              Navigator.push(context, CupertinoPageRoute(builder: (context) => (MyApp2())));
  
            },  
              ),
           ]   
          )
        )
      ),
    );
  }
}