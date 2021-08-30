import "package:flutter/material.dart";
import 'package:untitled/widget/sign_up_content_widget.dart';
import 'package:untitled/widget/sign_up_title_widget.dart';
import 'package:untitled/widget/sign_up_btn.dart';

String _title = "报名表名称";
int _signCount = 68;
int _totalCount = 150;
String _signTitle = "8.25露天电影活动报名";
String _signDetail = "为了丰富村民生活，我村与和平影院联合举办夏末电影文化宣传系列活动，"
    + "8.25日，在老村口大槐树前，进行第一场露天电影播放，本次播放内容为《红海行动》，请村民们积极报名。";

class OnekeySignUpPage extends StatefulWidget {
  const OnekeySignUpPage({Key? key}) : super(key: key);

  @override
  _OnekeySignUpPageState createState() => _OnekeySignUpPageState();
}

class _OnekeySignUpPageState extends State<OnekeySignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Center(
                      child: Text(
                        _title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                        margin: EdgeInsets.all(15),
                        child: Divider(
                          height: 1.0,
                          color: Colors.grey,
                        )
                    ),
                    SignUpTitleWidget(
                        signCount: _signCount, totalCount: _totalCount),
                    SignUpContentWidget(
                        signTitle: _signTitle, signDetail: _signDetail),
                    SignUpBtn(),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("返回"),
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(50, 40))
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(left: 30, right: 0, bottom: 30,
                  child: Row(
                      children: [
                        Container(
                            color: Colors.grey,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                            )
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("wangerniu"),


                        Row(
                          children: [
                            Icon(Icons.location_on_rounded),
                            Text("hunanshansg"),
                          ],
                        ),
                      ]
                  )
              ),
            ]
        )
    );
  }
}
