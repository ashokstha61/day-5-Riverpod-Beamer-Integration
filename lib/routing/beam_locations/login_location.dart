import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/login_page.dart';

class LoginLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/login'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      BeamPage(
        key: const ValueKey('login'),
        child: LoginPage(), // ✅ now valid
      ),
    ];
  }
}
