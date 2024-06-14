import 'package:flutter/material.dart';
import '../models/user.model.dart';
import '../services/account.service.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  Future<void> signUp(String username, String email, String password, bool rgpd) async {
    final AccountService accountService = AccountService();
    User? newUser = await accountService.signUp(username, email, password, rgpd);
    if (newUser != null) {
      _user = newUser;
      notifyListeners();
    }
  }

  Future<void> signIn(String username, String email, String password) async {
    final AccountService accountService = AccountService();
    User? existingUser = await accountService.signIn(username, email, password);
    if (existingUser != null) {
      _user = existingUser;
      notifyListeners();
    }
  }

  void signOut() {
    _user = null;
    notifyListeners();
  }
}
