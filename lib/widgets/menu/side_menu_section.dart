import 'package:bussiness_website/components/constants.dart';
import 'package:bussiness_website/widgets/menu/contacts.dart';
import 'package:bussiness_website/widgets/menu/goals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Logo(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                const ContactsInfo(),
                const Divider(
                  color: kSecondaryColor,
                ),
                const Goals(),
                const Divider(
                  color: kSecondaryColor,
                ),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/download.svg"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text("Download Brochure",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ))
                        ],
                      ),
                    )),
                Container(
                  color: kSecondaryColor,
                  margin:
                     const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Spacer(),

                      IconButton(
                        
                        
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/dribble.svg"),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
