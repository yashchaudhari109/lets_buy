import 'package:flutter/material.dart';
import 'package:lets_buy/Component/appbarContainer.dart';
import 'package:lets_buy/Component/customizedtext.dart';
import 'package:lets_buy/constant.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Kappbarcolor,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(),
      ),
      title: CustomizedText(
        text: "Jantu",
      ),
      actions: [
        AppbarContainer(
          text: "Jantu Filters",
          icon: Icons.filter_alt,
        ),
        AppbarContainer(
          text: "305008",
          icon: Icons.location_on,
        ),
      ],
    );
  }
}
