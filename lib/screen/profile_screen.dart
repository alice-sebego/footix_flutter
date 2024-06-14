import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user.provider.dart';
import 'signin.dart';
import 'cgu.screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;
    // ignore: avoid_print
    print(user);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: user == null
          ? const Center(child: Text('Aucun utilisateur connecté'))
          : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipOval(
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/default-avatar.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                )
              ),
              const SizedBox(height: 20),
              Text('Pseudo : ${user.username}',
                  style: const TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
              Text('Email : ${user.email}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('Date de création : ${user.createdAt?.toLocal().toString() ?? 'N/A'}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('Role : ${user.role?.name ?? 'N/A'}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('Statut : ${user.status ?? 'N/A'}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('Points accumulés : ${user.accumulatedPoints ?? 'N/A'}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Appeler la méthode de déconnexion
                  userProvider.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                },
                child: const Text('Déconnexion'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CguScreen()),
                  );
                },
                child: const Text('Voir les CGU'),
              ),
            ],
          ),
      ),
    );
  }
}
