import 'package:flutter/material.dart';
import 'package:lets_buy/Component/appbarContainer.dart';
import 'package:lets_buy/Component/customizedtext.dart';
import 'package:lets_buy/Screens/body.dart';
import 'package:lets_buy/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Kappbarcolor,
        backgroundColor: Kappbarcolor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        title: CustomizedText(
          text: "Jantu",
          fontsize: 18.0,
          fontweight: FontWeight.bold,
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
      ),
      body: Body(),
    );
  }
}
