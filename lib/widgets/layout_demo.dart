import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("布局练习")
      ),
      body: Container(
        // color: Colors.grey,
        // child: Column(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       width: 100,
        //       height: 100,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       width: 200,
        //       height: 150,
        //     ),
        //     Container(
        //       color: Colors.green,
        //       width: 100,
        //       height:180,
        //     ),
        //   ],
        // ),
        //
        // child: Flex(
        //   direction: Axis.vertical,
        //     children: [
        //       Expanded(child: Container(
        //         color: Colors.red,
        //         width: 100,
        //         height: 100,
        //         ),
        //         flex: 1,
        //       ),
        //       Container(
        //         color: Colors.blue,
        //         width: 200,
        //         height: 150,
        //       ),
        //       Container(
        //         color: Colors.green,
        //         width: 100,
        //         height:180,
        //       ),
        //     ],
        // ),
        child: EdgeDemo(),
      )
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Align(
        alignment: Alignment(-.5, 0),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}

class EdgeDemo extends StatelessWidget {
  const EdgeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 100,
    //   height: 100,
    //   color: Colors.red,
    //   margin: EdgeInsets.all(100),
    //   padding: EdgeInsets.all(10),
    //   child: Text("data"),
    //
    // );
    return DecoratedBox(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsets.all(50),
        ),
    );
  }
}




