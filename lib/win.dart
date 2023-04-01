import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  final String kazanan;
  const Win({required this.kazanan, super.key});

  @override
  State<StatefulWidget> createState() {
    if (this.kazanan == "joker") {
      return WinState();
    } else if (this.kazanan == "batman") {
      return WinState1();
    } else {
      return WinState2();
    }

    throw UnimplementedError();
  }
}

class WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "KAZANAN",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          //Text("KAZANAN"),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/joker.jpeg'),
                      fit: BoxFit.cover)),
            ),
          ),
          ReturnButton(),
        ],
      ),
    );
  }
}

class WinState1 extends State<Win> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "KAZANAN",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/batman.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          ReturnButton(),
        ],
      ),
    );
  }
}

class WinState2 extends State<Win> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double frameSize = 10.0;
    final Color frameColor = Colors.red;
    final Color frameColor2 = Colors.grey;
    return Scaffold(
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
                      bottom: BorderSide(width: frameSize, color: frameColor),
                      left: BorderSide(width: frameSize, color: frameColor),
                      right: BorderSide(width: frameSize, color: frameColor),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                color: Colors.white,
                child: const Text(
                  'BERABERE',
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
                      bottom: BorderSide(width: frameSize, color: frameColor2),
                      left: BorderSide(width: frameSize, color: frameColor2),
                      right: BorderSide(width: frameSize, color: frameColor2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              ReturnButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // handle button press
        Navigator.pop(context);
      },
      child: const Text('Geri Dön'),
    );
  }
}
