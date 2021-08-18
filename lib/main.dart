import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InicioState();
  }
}

class InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Color.fromRGBO(2, 41, 54, 100),
      ),

      body: Container(
        color: Color(0xFF022936),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          children: <Widget>[
            Image.asset('imagens/treino.jpg', width: 400,),
            Form(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 25,
                      color: Colors.black87
                      ),
                      decoration: InputDecoration(
                        hintText: 'CPF, Usuário ou E-mail',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          )
                        ),
                      )
                    )
                ],
                )
                ),
                Form(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 25,
                      color: Colors.black87
                      ),
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          )
                        ),
                      )
                    )
                ],
                )
                ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                child: Text('Login'),
                  onPressed: () {
              },
              color: Color(0xFFf43e01),
              textColor: Colors.white,
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                child: Text('Não sou aluno'),
                  onPressed: () {
              },
              color: Color(0xFFf43e01),
              textColor: Colors.white,
            ),
            )
        ],
        ),
        ),
    );
  }
}