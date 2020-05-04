import 'package:flutter/material.dart';
void main() {
  runApp(MyApp2());
}
class MyApp2 extends StatefulWidget{
  @override
  _SegundaPage createState() => _SegundaPage();
}
class _SegundaPage extends State<MyApp2>{
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
        appBar: AppBar(
        title: Text('Produto 2'),
          ),
        body: Container(
                      padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Column(
              children: <Widget>[
                ListView(
                  padding: const EdgeInsets.all(2),
                  children: <Widget>[
                    Container(
                     height: 50,
                     color: Colors.teal[200],
                     child: ListView(
                       children: <Widget>[
                         Text('Pedido Nº: '),
                         ListTile(
                          title: Text('Código:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                        Text('Previsão de Entrega:'), 
                        ListTile(
                          title: Text('Local de entrega:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),   

                       ],
                       ),
                    ),
                    Container(
                     height: 50,
                     color: Colors.teal[200],
                     child: ListView(
                       children: <Widget>[
                         Text('Pedido Nº: '),
                         ListTile(
                          title: Text('Código:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                        Text('Previsão de Entrega:'), 
                        ListTile(
                          title: Text('Local de entrega:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),   

                       ],
                       ),
                    ),
                    Container(
                     height: 50,
                     color: Colors.teal[200],
                     child: ListView(
                       children: <Widget>[
                         Text('Pedido Nº: '),
                         ListTile(
                          title: Text('Código:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                        Text('Previsão de Entrega:'), 
                        ListTile(
                          title: Text('Local de entrega:'),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),   

                       ],
                       ),
                    ),
                 ])
              ]),
            ),
          ),
        ),
      );
  }
}