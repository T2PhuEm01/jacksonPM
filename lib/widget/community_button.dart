import 'package:flutter/material.dart';
import 'package:devfolio/configs/configs.dart';
import 'package:devfolio/constants.dart';

class CommunityIconBtn extends StatelessWidget {
  final String icon;
  final String link;
  final double height;

  const CommunityIconBtn({
    super.key,
    required this.icon,
    required this.link,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.h!,
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Image.asset(
          icon,
          height: height,
        ),
        onTap: () => openURL(link),
      ),
    );
  }
}
