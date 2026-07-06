import 'package:flutter/material.dart';
import 'presentation/screens/pitch_screen.dart';

void main() {
  runApp(const LivePitchApp());
}

class LivePitchApp extends StatelessWidget {
  const LivePitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FIFA Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      home: const PitchScreen(),
    );
  }
}
