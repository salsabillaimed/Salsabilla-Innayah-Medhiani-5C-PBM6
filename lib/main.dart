import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugaspratikum6/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pratikum 6',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _booleanvalue = false;

  void _isBool() async {
    final SharedPreferences prefs = await _preference;

    setState(() {
      _booleanvalue = !_booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstPage(),
            ));
      }
    });
    prefs.setBool('booleanvalue', _booleanvalue);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = prefs.getBool('booleanvalue') ?? _booleanvalue;
      if (_booleanvalue == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstPage(),
          )
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 99, 68, 11),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 16
            ),
            const Text(
              "Hallo, Selamat Datang!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 55,
                fontFamily: "Roboto",
                shadows: [
                  Shadow(
                    blurRadius: 2,
                    offset: Offset(4, 2),
                    color: Color.fromARGB(255, 170, 141, 60),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 14
            ),
            Container(
              width: 400,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: _isBool, 
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                    color: Color.fromARGB(255, 170, 141, 60),
                  ),
                ),        
              )
            )
          ],
        )
      )
    );
  }
}