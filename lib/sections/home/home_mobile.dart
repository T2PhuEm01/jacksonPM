import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devfolio/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/configs/configs.dart';

import 'package:devfolio/utils/utils.dart';
import 'package:devfolio/widget/social_links.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppProvider>(context);
    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -AppDimensions.normalize(25),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height: AppDimensions.normalize(150),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                        // fontSize: 20.sp,
                        color: appProvider.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10.dg),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "Tran Thanh",
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                    // fontSize: 20.sp,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "Phu Em",
                  style: AppText.h3b!.copyWith(
                    height: 1,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        // TyperAnimatedText(
                        //   ' UI/UX Enthusiast',
                        //   speed: const Duration(milliseconds: 50),
                        //   textStyle: AppText.b1,
                        // ),
                        TyperAnimatedText(
                          ' A friend :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
