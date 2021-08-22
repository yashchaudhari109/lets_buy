import 'package:flutter/material.dart';
import 'package:lets_buy/Component/customizedtext.dart';
import 'package:lets_buy/constant.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer(
      {Key? key, this.text, this.icon, this.color, this.fontsize, this.onTap})
      : super(key: key);
  final icon;
  final text;
  final onTap;
  final color;
  final fontsize;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 9.0, 6.0, 9.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: color != null ? color : Colors.white,
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
            child: Row(
              children: [
                CustomizedText(
                  text: text,
                  color: Colors.black,
                  fontsize: fontsize != null ? fontsize : 12.0,
                ),
                icon != null
                    ? Icon(
                        icon,
                        color: Kappbarcolor,
                        size: 12.0,
                      )
                    : SizedBox(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
