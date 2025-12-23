import 'package:beamer/beamer.dart';
import 'package:day5riverpodandbeamer/routing/beam_locations/register_location.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'beam_locations/home_location.dart';
import 'beam_locations/login_location.dart';
import 'guards/auth_guard.dart';

final routerProvider = Provider<BeamerDelegate>((ref) {
  return BeamerDelegate(
    initialPath: '/login',
    guards: [AuthGuard(ref)],
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [LoginLocation(), RegisterLocation(), HomeLocation()],
    ),
  );
});
