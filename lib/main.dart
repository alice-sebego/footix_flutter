import 'package:flutter/material.dart';
import 'package:footix_flutter/screen/home_screen.dart';
import 'package:footix_flutter/theme/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:footix_flutter/providers/user.provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider())
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Footix Flutter',
      theme: ThemeData(
        fontFamily: 'Poppins', // Default Police 
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          headlineLarge:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
          headlineMedium:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
          headlineSmall:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
          titleLarge:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
          titleMedium:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
          titleSmall:
              TextStyle(fontFamily: 'RobotoSlab', fontWeight: FontWeight.bold),
        ),
        colorScheme: ColorScheme(
          primary: AppColors.primary,
          primaryContainer: AppColors.primary.withOpacity(0.1),
          secondary: AppColors.accent,
          secondaryContainer: AppColors.accent.withOpacity(0.1),
          surface: AppColors.background,
          background: AppColors.background,
          error: AppColors.error,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: AppColors.text,
          onBackground: AppColors.text,
          onError: Colors.white,
          brightness:
              Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

