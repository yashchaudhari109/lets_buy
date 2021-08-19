import 'package:flutter/material.dart';
import 'package:lets_buy/Component/myarc.dart';
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
  double _bottom = 10;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  minRadius: 26.0,
                                ),
                                CircleAvatar(
                                  minRadius: 26.0,
                                ),
                                CircleAvatar(
                                  minRadius: 26.0,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _bottom = _first ? 20 : 240;

                                    _first = !_first;
                                  });
                                },
                                icon: Icon(Icons.expand_more)),
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
