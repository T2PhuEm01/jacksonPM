import 'package:devfolio/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/configs/app_typography.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "< ",
          style: AppText.b1!.copyWith(
            // fontSize: AppDimensions.normalize(15),
            fontFamily: 'Agustina',
            color: appProvider.isDark ? Colors.white : Colors.black,
          ),
        ),
        Text(
          "Phu Em",
          style: AppText.b1b!.copyWith(
            // fontSize: AppDimensions.normalize(20),
            fontFamily: 'Agustina',
            color: appProvider.isDark ? Colors.white : Colors.black,
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          style: AppText.b1!.copyWith(
            // fontSize: AppDimensions.normalize(15),
            fontFamily: 'Agustina',
            color: appProvider.isDark ? Colors.white : Colors.black,
          ),
        )
      ],
    );
  }
}
