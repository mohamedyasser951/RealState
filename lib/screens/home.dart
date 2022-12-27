import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/responsive.dart';
import 'package:bussiness_website/widgets/menu/side_menu_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.mainSection});
  final Widget mainSection;
  GlobalKey<ScaffoldState> scaffolfkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolfkey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: IconButton(
                  onPressed: () {
                    scaffolfkey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            ),
      drawer: const SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                 Expanded(flex: 2, child: SideMenu()),
                // if (Responsive.ismobileLarge(context)) SizedBox(width: 20.0,),
                Expanded(flex: 7, child: mainSection)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
