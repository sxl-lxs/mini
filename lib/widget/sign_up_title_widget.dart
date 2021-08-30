import 'package:flutter/material.dart';

class SignUpTitleWidget extends StatelessWidget {
  final int signCount, totalCount;
  const SignUpTitleWidget({Key? key, required this.signCount, required this.totalCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.only(left: 30, right: 30, top: 5),
      padding: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1.0)],
        color: Colors.white,
        // borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Text(
            "当前已有 $signCount 人报名",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 140),
          Text(
            "$signCount/$totalCount",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
