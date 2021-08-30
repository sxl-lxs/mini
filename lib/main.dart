import 'package:flutter/material.dart';
import 'package:untitled/page/onekey_signup_page.dart';
import 'package:untitled/widgets/AffairsDetail.dart';
import 'package:untitled/widgets/demo_01.dart';
import 'package:untitled/widgets/layout_demo.dart';
import 'package:untitled/widgets/navigation_demo.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => LoginPage(),
        "menu": (context) => MenuPage(),
        "layout": (context) => LayoutDemo(),
        "affairsDetail": (context) => AffairsDetail(),
        "onekeySignupPage": (context) => OnekeySignUpPage(),
      },
      // home: LoginPage(),
      // initialRoute: "layout",
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xinlinshen"),
        elevation: 50.0,
        centerTitle: true,
      ),
      body: InputDemo(),
    );
  }
}



