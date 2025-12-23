// import 'package:flutter/material.dart';

// class AppButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   const AppButton({super.key, required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Text(text),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants/app_spacing.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Text(text),
        ),
      ),
    );
  }
}
