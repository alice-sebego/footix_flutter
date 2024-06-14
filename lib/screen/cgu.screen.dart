import 'package:flutter/material.dart';

class CguScreen extends StatelessWidget {
  const CguScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.surface,
        ),
        title: Text(
            'CGU',
            style: TextStyle(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
      ),
      body: const Center(
        child: Text('This is the CGU Screen'),
      ),
    );
  }
}
