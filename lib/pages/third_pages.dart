import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 50, minWidth: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Container(
                color: Colors.orange,
                height: 200,
                width: 350,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orangeAccent,
                      Colors.orangeAccent[100],
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 35.0, bottom: 16),
                  child: Text(
                    'Castro Zayra 6.-J',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[50],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber[200],
                      Colors.green,
                      Colors.deepOrange[200],
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Text(
                  'Hola',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  print('nube');
                },
                child: Container(
                  width: 110,
                  height: 110,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange[100],
                        Colors.amber[200],
                        Colors.green,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: ImageIcon(
                    AssetImage("assets/images/nube.png"),
                    size: 90,
                    color: Colors.black,
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
