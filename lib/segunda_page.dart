import 'package:flutter/material.dart';
import 'Registrar_page.dart';
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
      home: CustomScrollView(
                  
          slivers: <Widget> [
            SliverAppBar(
              backgroundColor: Colors.lightBlue[900],
              expandedHeight:  180,
              pinned:true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.all(0),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                      Text('Produto', style: TextStyle(fontSize: 22),),
                    
                  ],
                ),
              ),
            ),
                SliverList( 
                    delegate: SliverChildListDelegate(List<Widget>.generate(4, (i) {
                      Size.fromHeight(300);
                      return Card(
                        child:Container(
                     height: 350 ,
                     
                     margin: EdgeInsets.all(4),
                     decoration: BoxDecoration(
                       color: Colors.white,
                         border: Border.all(
                           width: 3.0
                         ),
                         borderRadius: BorderRadius.all(Radius.circular(10.0)
                         ),
                       ),
                     
                     child: ListView(
                       children: <Widget>[
                         ListTile(
                          title: Text('Pedido Nº:',style: TextStyle(color:Colors.cyanAccent[700],fontWeight: FontWeight.bold)),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                         Divider(),
                         ListTile(
                          title: Text('Código:',style: TextStyle(color:Colors.cyanAccent[700],fontWeight: FontWeight.bold)),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                            Divider(),
                            ListTile(
                          title: Text('Previsão de Entrega:',style: TextStyle(color:Colors.cyanAccent[700],fontWeight: FontWeight.bold)),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),
                        Divider(),
                        ListTile(
                          title: Text('Local de entrega:',style: TextStyle(color:Colors.cyanAccent[700],fontWeight: FontWeight.bold)),
                            onTap: () => goToPage(1),
                            selected: currentPage == 1,
                            ),  
                            Divider(), 

                       ],
                       ),
                    ),
                      );

                      
                    },)),
          ),  
          ]),
    
    );
  }
}