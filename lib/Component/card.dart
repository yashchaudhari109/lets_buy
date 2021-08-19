import 'package:flutter/material.dart';
import 'package:lets_buy/Component/cardBottom.dart';
import 'package:lets_buy/Component/customizedtext.dart';
import 'package:lets_buy/constant.dart';

class CustomizedCard extends StatefulWidget {
  const CustomizedCard({Key? key}) : super(key: key);

  @override
  _CustomizedCard createState() => _CustomizedCard();
}

class _CustomizedCard extends State<CustomizedCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        height: height * 0.36,
        width: width * 0.90,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      image: DecorationImage(
                        image: AssetImage("assets/quote.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      color: Colors.black.withOpacity(0.4),
                    ),
                    height: 30.0,
                    width: width * 0.90,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: CustomizedText(
                              text: "Veeranahalli (Approx. 22 KM)",
                            ),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: CustomizedText(
                              text: "3 days ago",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: CardBottom(),
            ),
          ],
        ),
      ),
    );
  }
}
