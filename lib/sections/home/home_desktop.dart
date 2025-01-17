import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devfolio/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/animations/entrance_fader.dart';
import 'package:devfolio/configs/configs.dart';

import 'package:devfolio/utils/utils.dart';
import 'package:devfolio/widget/social_links.dart';
import 'package:provider/provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: EntranceFader(
              offset: const Offset(0, 0),
              delay: const Duration(seconds: 1),
              duration: const Duration(milliseconds: 800),
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height:
                    size.width < 1200 ? size.height * 0.8 : size.height * 0.85,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
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
                      'WELCOME TO MY PORTFOLIO! ',
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                        color: appProvider.isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "Tran Thanh",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  "Phu Em",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                    height: 1,
                    color: appProvider.isDark ? Colors.white : Colors.black,
                  ),
                ),
                Space.y1!,
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
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
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
