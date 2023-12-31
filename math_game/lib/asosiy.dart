import 'package:flutter/material.dart';
import 'package:math_game/home/boluv.dart';
import 'package:math_game/home/kopaytiruv.dart';
import 'package:math_game/home/minus.dart';
import 'package:math_game/home/plus.dart';

class AsosiyPageUz extends StatefulWidget {
  const AsosiyPageUz({
    Key? key,
  }) : super(key: key);

  @override
  State<AsosiyPageUz> createState() => _AsosiyPageUzState();
}

class _AsosiyPageUzState extends State<AsosiyPageUz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[400],
      appBar: AppBar(
        title: const Text(
          "Math Game Uz",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurpleAccent,
                child: (const Column(
                  children: <Widget>[
                    Text(
                      "+",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MinusPage()));
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurpleAccent,
                child: (const Column(
                  children: <Widget>[
                    Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BoluvPage()));
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurpleAccent,
                child: (const Column(
                  children: <Widget>[
                    Text(
                      "÷",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FullPage()));
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.deepPurpleAccent,
                child: (const Column(
                  children: <Widget>[
                    Text(
                      "×",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: (Column(
                children: <Widget>[
                  Text(
                    "Bu o'yinni Islomjon Nurmukhammadov Yaratdi",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple[700],
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
