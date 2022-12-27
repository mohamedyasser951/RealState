
import 'package:flutter/material.dart';


class ContactsInfo extends StatelessWidget {
  const ContactsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContactInfo(title: "Address", text: "Mansoura"),
          buildContactInfo(title: "Country", text: "Egypt"),
          buildContactInfo(title: "Email", text: "mohamedyasser@gmail.com"),
          buildContactInfo(title: "Mobile", text: "+20 012 078 645 40"),
          buildContactInfo(title: "Website", text: "moyasser@website.com"),
        ],
      ),
    );
  }
}

buildContactInfo({required String title, required String text}) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 1,child: Text(title, style: const TextStyle(color: Colors.white))),
          Expanded(flex:2,child: Text(text,overflow: TextOverflow.ellipsis,)),
        ],
      ),
);
