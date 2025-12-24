import 'package:flutter/material.dart';
import 'package:day5riverpodandbeamer/core/constants/app_colors.dart';
import 'package:day5riverpodandbeamer/core/constants/app_spacing.dart';

class FeaturedCardWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String tag;

  const FeaturedCardWidget({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    this.tag = 'NEW',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: AppSpacing.md),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, color.withOpacity(0.7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: AppSpacing.lg,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(AppSpacing.borderSm),
              ),
              child: Text(
                tag,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: AppSpacing.fontSm,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: AppSpacing.fontSm,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              subtitle,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: AppSpacing.fontSm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
