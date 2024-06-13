import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Es-tu un footix ... ou pas ?',
            style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is Poppins for bodyText',
                style: Theme.of(context).textTheme.bodyLarge),
            Text('Es-tu un footix ... ou pas ?',
                style: Theme.of(context).textTheme.headlineLarge),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context)
                  .colorScheme
                  .onPrimary, 
                foregroundColor: Theme.of(context)
                  .colorScheme
                  .primary,
              ),
              child: const Text('Button'),
            ),
          ],
        ),
      ),
      backgroundColor:
          Theme.of(context).colorScheme.background,
    );
  }
  
}
