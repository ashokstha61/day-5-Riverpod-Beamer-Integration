import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/register_page.dart';

class RegisterLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/register'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      BeamPage(
        key: const ValueKey('register'),
        child: RegisterPage(),
      ),
    ];
  }
}
