import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 65),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'McDonalds',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ), //contenedor
                SizedBox(height: 40),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: new Image(
                              width: 250.0,
                              height: 165.1,
                              image: new AssetImage('assets/images/hamburgesa.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.account_box),
                        hintText: 'Nombre de usuario',
                      ),
                    ), //Campo de Texto
                    SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key_rounded),
                        hintText: 'Contraseña',
                      ),
                    ), //Campo de Texto
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.red[200],
                            ),
                            child: Text('Iniciar Sesión'),
                            onPressed: () {}), // Botón Login
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              primary: Colors.red[300],
                            ),
                            child: Text('Cancelar'),
                            onPressed: () {}), // Botón Login
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
