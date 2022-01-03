import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:appEduColdLava/view/first_screen.dart';

var _THEME_COLOUR_ = const Color(0xff0A3D62);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _THEME_COLOUR_,
        title: Text(
          'COLD LAVA EDUCATION',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Colors.lightBlueAccent[700]!,
                Colors.lightGreenAccent
              ])),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Container(
              child: Text(
                'SELAMAT DATANG DI APLIKASI PEMBELAJARAN ',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 90, right: 90, top: 10, bottom: 10),
                    child: Image.asset('images/logo.png'),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              color: Colors.blue,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Mulai Belajar"),
                  SizedBox(width: 16.0),
                  Icon(Icons.menu_book_outlined),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FirstScreen();
                }));
              },
            ),
          ])),
    );
  }
}
