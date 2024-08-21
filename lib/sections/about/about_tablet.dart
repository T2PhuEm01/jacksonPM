import 'package:devfolio/configs/configs.dart';
import 'package:devfolio/provider/app_provider.dart';
import 'package:devfolio/utils/about_utils.dart';
import 'package:devfolio/utils/utils.dart';
import 'package:devfolio/utils/work_utils.dart';

import 'package:devfolio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:devfolio/constants.dart';
import 'package:devfolio/widget/about_me_data.dart';
import 'package:devfolio/widget/community_button.dart';
import 'package:devfolio/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          // Image.asset(
          //   StaticUtils.mobilePhoto,
          //   height: height * 0.27,
          // ),
          Container(
            height: height * 0.27, // Chiều cao của hình ảnh
            width:
                height * 0.27, // Chiều rộng để đảm bảo hình ảnh là hình vuông
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red, // Màu của viền
                width: 5.0, // Độ dày của viền
              ),
            ),
            child: CircleAvatar(
              radius: (height * 0.27) / 2,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  StaticUtils.mobilePhoto,
                  width: height * 0.26,
                  height: height * 0.27,
                  fit: BoxFit
                      .cover, // Đảm bảo hình ảnh phù hợp với khung hình tròn
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.grey[900],
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: appProvider.isDark ? Colors.white54 : Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Row(
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: appProvider.isDark ? Colors.white54 : Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Name",
                    information: "Tran Thanh Phu Em",
                  ),
                  AboutMeData(
                    data: "Age",
                    information: "23",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Email",
                    information: "ttphuem2k1@gmail.com",
                  ),
                  AboutMeData(
                    data: "From",
                    information: "Tan Phu District, Ho Chi Minh City",
                  ),
                ],
              ),
            ],
          ),
          Space.y1!,
          Row(
            children: [
              SizedBox(
                height: AppDimensions.normalize(13),
                width: AppDimensions.normalize(40),
                child: OutlinedButton(
                  onPressed: () => html.window.open(StaticUtils.resume, 'pdf'),
                  child: const Text(
                    "Resume",
                  ),
                ),
              ),
              Space.x!,
              Container(
                width: width * 0.05,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[900]!,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: WorkUtils.logos
                        .asMap()
                        .entries
                        .map(
                          (e) => CommunityIconBtn(
                            icon: e.value,
                            link: WorkUtils.communityLinks[e.key],
                            height: WorkUtils.communityLogoHeight[e.key],
                          ),
                        )
                        .toList()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
