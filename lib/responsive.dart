import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.desktop,
      required this.mobile,
      this.mobileLarge,
      this.tablet});
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool ismobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700 && tablet !=null) {
       return tablet!;
     } else if (size.width >= 450 && mobileLarge!=null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
