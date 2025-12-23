import 'package:flutter_riverpod/legacy.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, bool>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  void login() => state = true;
  void logout() => state = false;
}
