import 'package:devfolio/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/configs/app_dimensions.dart';
import 'package:devfolio/configs/app_theme.dart';
import 'package:devfolio/configs/app_typography.dart';
import 'package:provider/provider.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({super.key, required this.techName});
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Row(
      children: [
        Icon(
          Icons.play_arrow,
          color: AppTheme.c!.primary,
          size: AppDimensions.normalize(6),
        ),
        Text(
          " $techName ",
          style: AppText.l1b!.copyWith(
            color: appProvider.isDark ? Colors.white : Colors.grey[900],
          ),
        )
      ],
    );
  }
}
