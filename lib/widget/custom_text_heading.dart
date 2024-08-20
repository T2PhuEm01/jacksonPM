import 'package:devfolio/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/configs/app_typography.dart';
import 'package:provider/provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.h1!.copyWith(
        fontFamily: 'Montserrat',
        color: appProvider.isDark ? Colors.white : Colors.grey[900],
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.l1!.copyWith(
        color: appProvider.isDark ? Colors.white : Colors.grey[900],
        fontFamily: 'Montserrat',
      ),
    );
  }
}
