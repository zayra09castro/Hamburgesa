import 'package:flutter/material.dart';
import 'package:zayra/pages/first_pages.dart';
import 'package:zayra/pages/second_pages.dart';
import 'package:zayra/pages/third_pages.dart';

void main() => runApp(BurgerApp());

class BurgerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesas Zayra',
      home: PaginaInicio(),
    ); // Material App
  } // Constructor
} // BurgerApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} // Clase PaginaInicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } // Switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 30.0), //icon
              title: Text('Inicio')), //
          BottomNavigationBarItem(
              icon: Icon(Icons.format_align_center_rounded, size: 30.0), //icon
              title: Text('Registrarse')), //
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded, size: 30.0), //icon
              title: Text('Compras')), //
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
      ), // bottom
    ); // Scaffold
  } // Constructor
} // Clase _PaginaInicioState
