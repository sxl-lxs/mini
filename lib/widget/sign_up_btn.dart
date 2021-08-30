import 'package:flutter/material.dart';

bool status = false;
class SignUpBtn extends StatefulWidget {
  // static final bool status;
  const SignUpBtn({Key? key}) : super(key: key);

  @override
  _SignUpBtnState createState() => _SignUpBtnState();
}

class _SignUpBtnState extends State<SignUpBtn> {
  @override
  Widget build(BuildContext context) {
    if(status) {
      return OutlinedButton(
        onPressed: () {},
        child: Text(
          "已报名",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey),
          shape: MaterialStateProperty.all(CircleBorder()),
          minimumSize: MaterialStateProperty.all(Size(200, 200)),
        ),
      );
    }
    else {
      return OutlinedButton(
        onPressed: () {
          setState(() {
            status = !status;
          });
        },
        child: Text(
          "一键报名",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          shape: MaterialStateProperty.all(CircleBorder()),
          minimumSize: MaterialStateProperty.all(Size(200, 200)),
        ),
      );
    }
  }
}

