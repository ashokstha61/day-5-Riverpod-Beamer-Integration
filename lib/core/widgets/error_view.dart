import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import 'app_button.dart';

class ErrorView extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorView({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error_outline, size: 48),
          const SizedBox(height: 12),
          const Text(AppStrings.somethingWentWrong),
          const SizedBox(height: 12),
          AppButton(text: AppStrings.retry, onPressed: onRetry),
        ],
      ),
    );
  }
}
