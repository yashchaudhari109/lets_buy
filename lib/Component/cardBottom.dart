import 'package:flutter/material.dart';
import 'package:lets_buy/Component/appbarContainer.dart';
import 'package:lets_buy/Component/customizedtext.dart';

class CardBottom extends StatefulWidget {
  const CardBottom({Key? key}) : super(key: key);

  @override
  _CardBottomState createState() => _CardBottomState();
}

class _CardBottomState extends State<CardBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomizedText(
                      text: "Country bull: Rs. 95000",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    CustomizedText(
                      text: "Age: 3 years",
                      color: Colors.black,
                      fontsize: 13.0,
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellow,
                      ),
                      height: 35.0,
                      width: 35.0,
                    ),
                    CustomizedText(
                      text: "Seller: Gaurav",
                      color: Colors.black,
                      fontsize: 13.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 8.0),
              CustomizedText(
                text: "Read more...",
                color: Colors.black,
                fontweight: FontWeight.bold,
              ),
              Expanded(child: SizedBox()),
              AppbarContainer(
                text: "call",
                color: Colors.lightGreen,
                fontsize: 13.0,
              ),
              AppbarContainer(
                text: "Share",
                color: Colors.blue,
                fontsize: 13.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
