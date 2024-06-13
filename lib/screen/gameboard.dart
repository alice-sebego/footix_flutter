import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leaderboard'),
      ),
      body: const Center(
        child: Text('This is the Leaderboard Screen'),
      ),
    );
  }
}
