import 'package:flutter/material.dart';
import '../models/user_model.dart';

class AuthProvider with ChangeNotifier {
  User? _currentUser;

  User? get currentUser => _currentUser;

  void register(User user) {
    _currentUser = user;
    notifyListeners();
  }

  bool login(String email, String password) {
    if (_currentUser?.email == email && _currentUser?.password == password) {
      notifyListeners();
      return true;
    }
    return false;
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}
