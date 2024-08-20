import 'package:flutter/material.dart';
import 'package:devfolio/sections/about/about.dart';
import 'package:devfolio/sections/contact/contact.dart';
import 'package:devfolio/sections/home/home.dart';
import 'package:devfolio/sections/portfolio/portfolio.dart';
import 'package:devfolio/sections/services/services.dart';
import 'package:devfolio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  // static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String mobilePhoto = 'assets/photos/mobile1.jpg';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';
  static const String egTechGroup = 'assets/work/egtechgroup.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/thanhphuem.tran/",
    "https://www.instagram.com/pm.snake01/",
    "https://linkedin.com/in/pm.snake01/",
    "https://github.com/T2PhuEm01",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub = 'https://github.com/T2PhuEm01';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
