class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email required';
    }
    if (!value.contains('@')) {
      return 'Invalid email';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password required';
    }
    if (value.length < 6) {
      return 'Password too short';
    }
    final pattern =
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~%^_+=<>?]).{6,}$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Password must contain uppercase, lowercase, number, and symbol';
    }
    return null;
  }

  static String? confirmPassword(String? password, String? confirm) {
    final pwd = password?.trim() ?? '';
    final conf = confirm?.trim() ?? '';

    if (conf.isEmpty) {
      return 'Confirm password required';
    }
    if (pwd != conf) {
      return 'Passwords do not match';
    }
    return null;
  }

  // static String? phone(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Phone number required';
  //   }
  //   if (!RegExp(r'^98\d{8}$').hasMatch(value)) {
  //     return 'Invalid phone number';
  //   }
  //   return null;
  // }
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number required';
    }
    if (value.length < 10) return null;
    // Must start with 98 and have exactly 10 digits
    if (!RegExp(r'^9\d{9}$').hasMatch(value)) {
      return 'Phone number must start with 9 and be 10 digits';
    }
    return null;
  }
}
