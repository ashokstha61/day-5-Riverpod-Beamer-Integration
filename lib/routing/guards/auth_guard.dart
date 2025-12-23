// import 'package:beamer/beamer.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../features/auth/state/auth_provider.dart';
// import '../../core/constants/app_routes.dart';

// class AuthGuard extends BeamGuard {
//   AuthGuard(Ref ref)
//       : super(
//           pathPatterns: [AppRoutes.home],
//           check: (_, __) => ref.read(authProvider),
//           beamToNamed: (_, __) => AppRoutes.login,
//         );
// }

import 'package:beamer/beamer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/state/auth_provider.dart';
import '../../core/constants/app_routes.dart';

class AuthGuard extends BeamGuard {
  AuthGuard(Ref ref)
      : super(
          pathPatterns: ['/home*'],
          check: (_, __) => ref.read(authProvider),
          beamToNamed: (_, __) => AppRoutes.login,
        );
}

