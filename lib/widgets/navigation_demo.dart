import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: RaisedButton(
        onPressed: () async {
          // Navigator.of(context)
          //     .pushNamed(
          //       "affairsDetail",
          //       // arguments: {
          //       //   "IdentityCard": "123456",
          //       //   "AffairsID": "2",
          //       // }
          //       )
          //     .then((value) => print(value));

          Navigator.of(context)
              .pushNamed(
                "onekeySignupPage",
                // arguments: {
                //   "IdentityCard": "123456",
                //   "AffairsID": "2",
                // }
                )
              .then((value) => print(value));


            // var result = await Navigator.of(context).push(MaterialPageRoute(
            // builder: (context) {
            //   return AffairsDetail(identityCard: "123", affairsID: "456");
            // },
            // maintainState: false,
            // fullscreenDialog: false,
            // settings: RouteSettings(
            //   name: "menu",
            //   arguments: {"123456": "一二三"},
            // ),
            // ));
            // print(result);
        },
        child: Text("登陆"),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);
  final bool _buttonDisable = true;
  @override
  Widget build(BuildContext context) {
    dynamic arguments = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.toString()),
      ),
      body: new ListView(
        children: [
          UserTitle(),
          AnchorInfoLine(),
          SizedBox(height: 10),
          BusinessInfo(),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if(_buttonDisable) {
                return null;
              }
              Navigator.of(context).pop({"name": "xinlinshen", "age": 18});
            },
            child: Text("返回"),

          ),
        ],
      ),
    );
  }
}

class UserTitle extends StatelessWidget {
  const UserTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Image.asset('images/1.png'),
          SizedBox(
            width: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Text("王二狗"),
              margin: EdgeInsets.only(left: 5),
            ),
            Row(
              children: [
                Icon(Icons.location_on_rounded),
                Text("湖南省上瓦村-二社"),
              ],
            )
          ])
        ],
      ),
    );
  }
}

class AnchorInfoLine extends StatelessWidget {
  const AnchorInfoLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Text(
            "专项负责人",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 20.0,
            ),
          ),
          // SizedBox(width: 5),
          // Container(
          //   child: Icon(
          //     Icons.warning_amber_outlined,
          //     size: 20.0,
          //   ),
          // ),
          AnchorInfo(),
        ],
      ),
    );
  }
}

class AnchorInfo extends StatelessWidget {
  const AnchorInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "李全贵 18811111111",
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      margin: EdgeInsets.only(left: 160),
      waitDuration: Duration(milliseconds: 100),
      showDuration: Duration(seconds: 10),
      preferBelow: true,
      verticalOffset: -15.0,
      child: IconButton(
        iconSize: 20,
        onPressed: () {},
        icon: Icon(Icons.warning_amber_outlined),
      ),
    );
  }
}

class BusinessInfo extends StatelessWidget {
  const BusinessInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(top: 10),
      height: 500,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "第四季度树苗发放",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "——————————————————————————————————",
              textAlign: TextAlign.left,
              maxLines: 1,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
              color: Colors.white,
              // borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Image.asset('images/1.png'),
                SizedBox(
                  width: 10,
                ),
                Text("事项须知",
                  style: TextStyle(
                  fontSize: 22,
                  ),
                ),
                SizedBox(width: 170),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          ),
          ProcessInfo(),
        ],
      ),
    );
  }
}

class ProcessInfo extends StatefulWidget {
  const ProcessInfo({Key? key}) : super(key: key);

  @override
  _ProcessInfoState createState() => _ProcessInfoState();
}

class _ProcessInfoState extends State<ProcessInfo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final List<String> process = [

  "村委信息核对",
  "审批",
  "发放",
  "完成"
];
