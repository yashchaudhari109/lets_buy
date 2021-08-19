import 'package:flutter/material.dart';
import 'package:lets_buy/Component/animatedPosition.dart';
import 'package:lets_buy/Component/card.dart';
import 'package:lets_buy/constant.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  var top;
  var hig;
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    hig = height * 0.15 / 2;
    top = 0.0;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: height * 0.18,
              ),
              CustomizedCard(),
              CustomizedCard(),
              CustomizedCard(),
            ],
          ),
          LAnimatedPositioned(),
        ],
      ),
    );
  }
}
