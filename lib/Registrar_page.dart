

import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:projeto_correio/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_correio/principal_page_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


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

class MeuForm2 extends StatefulWidget {
 
  @override
  Registrarpage createState() {
    return Registrarpage();
  }
}
class Registrarpage extends  State<MeuForm2> {
   
  final _formKey = GlobalKey<FormState>();
  String nome, email,senha,username;


  setUsername(String name){
    username = nome;
    _saveUsername();
  }
  
 Future _loadUsername() async{
 var storege = await SharedPreferences.getInstance();
  setState(() {
    username = storege.getString('username');
  });
}
@override
  initState(){
    super.initState();
    _loadUsername();
  }

_saveUsername() async{
 var storege = await SharedPreferences.getInstance();
  storege.setString('username',nome);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Registrar'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Center(       
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
                 mainAxisAlignment: MainAxisAlignment.center,

            children:[  
              TextFormField(
              autofocus: true,
              validator: _validarNome,
                onSaved: (String val) {
                 nome = val;
             },
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Nome'),
  
            ),
             Divider(),
  
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
               child: Text('Continuar',style: TextStyle(color: Colors.black)),
               color: Colors.cyanAccent[700],
              onPressed: () {
               Navigator.push(context, CupertinoPageRoute(builder: (context) => (Principalpage())));
              return Principalpage();
                }
                
            ),
             ),
             
             
         ],
          ), 
        )
    
        );
  }
 

  bool isSignIn = false;
   String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
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
