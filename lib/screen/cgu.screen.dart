import 'package:flutter/material.dart';

class CguScreen extends StatelessWidget {
  const CguScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CGU'),
      ),
      body: const Center(
        child: Text('This is the CGU Screen'),
      ),
    );
  }
}
