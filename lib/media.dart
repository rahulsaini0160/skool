import 'package:flutter/material.dart';

class media extends StatefulWidget {
  const media({super.key});

  @override
  State<media> createState() => _mediaState();
}

class _mediaState extends State<media> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Container(
    //         width: _mediaQuery.size.width * 0.5,
    //         height: _mediaQuery.size.height * 0.5,
    //         decoration: const BoxDecoration(color: Colors.purple),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width * 0.5,
    //         height: _mediaQuery.size.height * 0.5,
    //         decoration: const BoxDecoration(color: Colors.yellow),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      // body: Builder(
      //   builder: (context) {
      //     if (_mediaQuery.orientation == Orientation.portrait) {
      //       return portraitWidget(_mediaQuery.size);
      //     } else {
      //       return landscapeWidget(_mediaQuery.size);
      //     }
      //   },
      // ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (_mediaQuery.orientation == Orientation.portrait) {
            return portraitWidget(_mediaQuery.size);
          } else {
            return landscapeWidget(_mediaQuery.size);
          }
        },
      ),
    );
  }

  Widget portraitWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(color: Colors.purple),
        child: Center(
            child: Text(
          "Portrait",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Center(
            child: Text(
          "Landscape",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
