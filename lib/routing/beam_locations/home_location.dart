import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../../features/home/presentation/home_page.dart';

class HomeLocation extends BeamLocation<RouteInformationSerializable> {
  @override
  List<String> get pathPatterns => ['/home'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return const [
      BeamPage(
        key: ValueKey('home'),
        title: 'Home',
        child: HomePage(),
      ),
    ];
  }
}
