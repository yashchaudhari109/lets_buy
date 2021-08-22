import 'package:flutter/material.dart';
import 'package:lets_buy/Component/appbarContainer.dart';
import 'package:lets_buy/Component/customizedCircle.dart';
import 'package:lets_buy/constant.dart';

class LAnimatedPositioned extends StatefulWidget {
  @override
  _LAnimatedPositionedState createState() => _LAnimatedPositionedState();
}

class _LAnimatedPositionedState extends State<LAnimatedPositioned> {
  bool _first = true;
  double _left = 0;
  double _top = 0;
  double _right = 0;
  double _bottom = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // bool isScreenWide = MediaQuery.of(context).size.width >= kMinWidthOfLargeScreen;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: height * 0.45,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastLinearToSlowEaseIn,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                            bottomRight: Radius.circular(80.0)),
                        gradient: new LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Kappbarcolor, Kappbarcolor, Kdragcolor],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment:
                                _first ? Alignment.topCenter : Alignment.center,
                            child: Flex(
                              mainAxisAlignment: _first
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.max,
                              direction:
                                  _first ? Axis.vertical : Axis.horizontal,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CustomizedCircle(
                                  text: "jantu",
                                  icon: Icons.sailing_outlined,
                                ),
                                CustomizedCircle(
                                  text: "Distance",
                                  icon: Icons.add_location_alt_rounded,
                                ),
                                CustomizedCircle(
                                  text: "Litres",
                                  icon: Icons.timeline,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                _first
                                    ? Container(
                                        width: 70,
                                        child: AppbarContainer(
                                          onTap: () {
                                            print("Search button get pressed");
                                          },
                                          text: "Search",
                                          color: Colors.blueAccent,
                                        ),
                                      )
                                    : Text("Choose your favourite"),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _bottom = _first ? 200 : 20;
                                        _first = !_first;
                                      });
                                    },
                                    icon: Icon(Icons.expand_more)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // ElevatedButton(
        //   child: const Text('CLICK ME'),
        //   onPressed: () {
        //     setState(() {
        //       _left = _first ? 10 : 30;
        //       _top = _first ? 80 : 30;
        //       _right = _first ? 10 : 30;
        //       _bottom = _first ? 80 : 30;

        //       _first = !_first;
        //     });
        //   },
        // ),
      ],
    );
  }
}
