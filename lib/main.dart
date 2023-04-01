import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deneme/win.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  final double frameSize = 10.0;
  final Color frameColor = Colors.red;
  final Color frameColor2 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    final appContext = context;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/joker.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border(
                          top: BorderSide(width: frameSize, color: frameColor),
                          bottom:
                              BorderSide(width: frameSize, color: frameColor),
                          left: BorderSide(width: frameSize, color: frameColor),
                          right:
                              BorderSide(width: frameSize, color: frameColor),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    color: Colors.white,
                    child: const Text(
                      'VS',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/batman.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border(
                          top: BorderSide(width: frameSize, color: frameColor2),
                          bottom:
                              BorderSide(width: frameSize, color: frameColor2),
                          left:
                              BorderSide(width: frameSize, color: frameColor2),
                          right:
                              BorderSide(width: frameSize, color: frameColor2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  MyButton(),
                ],
              ),
            ],
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // handle button press
        int value = Random().nextInt(100);
        if (value >= 0 && value < 52) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Win(kazanan: "joker")),
          );
        } else if (value >= 52 && value < 60) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Win(kazanan: "berabere")),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Win(kazanan: "batman")),
          );
        }
      },
      child: const Text('Savaş'),
    );
  }
}
