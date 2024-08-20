import 'package:devfolio/animations/entrance_fader.dart';
import 'package:devfolio/configs/app.dart';
import 'package:devfolio/configs/configs.dart';
import 'package:devfolio/provider/app_provider.dart';
import 'package:devfolio/provider/drawer_provider.dart';
import 'package:devfolio/provider/scroll_provider.dart';
import 'package:devfolio/responsive/responsive.dart';
import 'package:devfolio/utils/navbar_utils.dart';
import 'package:devfolio/utils/utils.dart';
import 'package:devfolio/widget/navbar_actions_button.dart';
import 'package:devfolio/widget/navbar_logo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:devfolio/constants.dart';
import 'package:devfolio/widget/arrow_on_top.dart';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
