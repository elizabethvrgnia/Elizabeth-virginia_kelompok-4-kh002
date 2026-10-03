import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[100],
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Profilecard(
          nama: 'Elizabeth Virginia',
          nim: '20240801078',
          hobi: 'Tidur dan Main Game',

          // 2 digit terakhir NIM = 78
          // 78 + 50 = 128
          skoraktivitas: 78 + 50,
        ),
      ),
    );
  }
}