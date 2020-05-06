import 'package:flutter/material.dart';
import 'package:projeto_correio/main.dart';
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
class MeuForm extends StatefulWidget {
  @override
  EntrarPage createState() {
    return EntrarPage();
  }
}
class EntrarPage extends  State<MeuForm> {
  final _formKey = GlobalKey<FormState>();
  bool _validate = false;
  String nome, email,senha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Entrar'),
        backgroundColor: Colors.lightBlue[900],
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
               keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Email'),
          validator: _validarEmail,
            onSaved: (String val) {
              email = val;
            }
            ),
            Divider(),
            TextFormField(
              autofocus: true,
              obscureText: true,
            validator: (String value) {
              if (value.length < 7) {
                return 'Password should be minimum 7 characters';
              }
              _formKey.currentState.save();
                  return null;
            },
            onSaved: (String value) {
              
            },
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Senha'),
  
            ),
            Divider(),
            ButtonTheme(
              height: 60.0,
             child: RaisedButton(
                child: new Text('Continuar',style: TextStyle(color: Colors.black)),
               color: Colors.cyanAccent[700],
              onPressed: () {
               Navigator.push(context, CupertinoPageRoute(builder: (context) => (Principalpage())));
              return Principalpage();
              
               }
  
           
  
          ),
             ),
         ],
          ),
        ),
      ),
        );
  }

  String _validarEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if(!regExp.hasMatch(value)){
      return "Email inválido";
    }else {
      return null;
    }
  }
}
