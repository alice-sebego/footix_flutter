import 'package:flutter/material.dart';
import 'package:footix_flutter/screen/profile_screen.dart';
import 'package:footix_flutter/screen/signin.dart';
import 'package:footix_flutter/screen/gameboard.dart';
import 'package:provider/provider.dart';
import '../providers/user.provider.dart';
import '../widgets/animations/fade.animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final bool isLoggedIn = userProvider.user != null;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .surface,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Theme.of(context).colorScheme.surface,
            onPressed: () {
              if (isLoggedIn) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
              child: Text('Es-tu un footix ... ou pas ?',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )),
            ),
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/kick-off.png'),
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: -5,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if (isLoggedIn) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GameBoard()),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                        child: Text(
                            isLoggedIn ? 'Yep ! je joue' : 'Je me connecte'),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
