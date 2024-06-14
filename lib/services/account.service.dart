import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.model.dart';

class AccountService {
  static const String apiUrl = 'https://back-footix-app.vercel.app';

  Future<User?> signUp(String username, String email, String password, bool rgpd) async {
    final url = Uri.parse('$apiUrl/auth/register');
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'username': username,
        'email': email,
        'password': password,
        'rgpd': rgpd.toString(),
      },
    );

    // ignore: avoid_print
    print('SignUp Response Body: ${response.body}');
    
    if (response.statusCode == 201) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return User.fromJson(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
      // ignore: avoid_print
      print('error signup');
      return null;
    }
  }

  Future<User?> signIn(String username, String email, String password) async {
    final url = Uri.parse('$apiUrl/auth/login');
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'username': username,
        'email': email,
        'password': password,
      },
    );

    // ignore: avoid_print
    print('SignUp Response Body: ${response.body}');
    
    if (response.statusCode == 201) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return User.fromJson(data);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
      return null;
    }
  }
}

