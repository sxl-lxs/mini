import 'package:flutter/material.dart';

final String _name = "王二狗",
    _location = "湖南省上瓦村-二社",
    _title = "第四季度树苗发放",
    _description = "描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉",
    _charge = "李全贵",
    _phone = "18811111111";
final int _status = 2; //当前完成的阶段数, 取值 0 - 6

class AffairsDetail extends StatefulWidget {
  // final String identityCard, affairsID;
  const AffairsDetail( {Key? key}) : super(key: key);

  @override
  _AffairsDetailState createState() => _AffairsDetailState();
}

class _AffairsDetailState extends State<AffairsDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 网络请求后台数据
    // _getInformation();
  }

  // _getInformation() async {
  //   // Todo
  //   _name = "王二狗";
  //   _location = "湖南省上瓦村-二社";
  //   _title = "第四季度树苗发放";
  //   _description = "描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉描述巴拉巴拉";
  //   _charge = "李全贵";
  //   _phone = "18811111111";
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              ListView(
                children: [
                  UserTitle(),
                  AnchorInfoLine(),
                  SizedBox(height: 10),
                  BusinessInfo(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop({"name": "xinlinshen", "age": 23});
                    },
                    child: Text("返回"),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(50, 40))
                    ),
                  ),
                ],
              ),
              Positioned(
                child: getButton(context),
                top: 440,
                right: 25,
              ),
            ]
        )
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
          // Image.asset('images/1.png')
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
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(_name),
                  margin: EdgeInsets.only(left: 5),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded),
                    Text(_location),
                  ],
                )
              ]
          )
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
      message: _charge + " " + _phone,
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
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [BoxShadow(color: Colors.grey)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                _title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                child: Divider(
                  height: 1.0,
                  color: Colors.black,
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                _description,
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
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3.0)],
                color: Colors.white,
                // borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Image.asset('images/1.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "事项须知",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
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
    return Container(
      // color: Colors.grey,
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: Column(children: getProcessList()),
    );
  }
}

List<Widget> getProcessList() {
  List<Widget> result = [];
  for (int i = 0; i < 5; i++) {
    result.add(GetRowInfo(row: i, isFinish: _status > i));
    result.add(GetLine(row: i, isFinish: _status > i));
  }
  result.add(GetRowInfo(row: 5, isFinish: _status > 5));
  return result;
}

final List<String> processLeftInfo = ["发起人", "个人提交", "", "", "", "", ""];
final List<String> processRightInfo = ["村长老王", "", "村委信息核对", "审批", "发放", "完成"];

class GetRowInfo extends StatelessWidget {
  final int row;
  final bool isFinish;
  const GetRowInfo({Key? key, required this.row, required this.isFinish})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url;
    if (isFinish) {
      url = 'images/true.png';
    } else {
      url = 'images/false.png';
    }

    switch (row) {
      case 1:
        return Container(
            height: 40,
            child: Row(
              children: [
                Container(
                  width: 110,
                  alignment: Alignment.centerRight,
                  child: Text(
                    processLeftInfo[row],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(url),
                ),
              ],
            ));
      default:
        return Container(
            height: 40,
            child: Row(
              children: [
                Container(
                  width: 110,
                  alignment: Alignment.centerRight,
                  child: Text(
                    processLeftInfo[row],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(url),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    processRightInfo[row],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
        );
    }
  }
}

class GetLine extends StatelessWidget {
  final int row;
  final bool isFinish;
  const GetLine({Key? key, required this.row, required this.isFinish})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (row == 1) {
      return Container(
          height: 50,
          child: Row(
            children: [
              SizedBox(width: 123),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: VerticalDivider(
                    width: 1,
                    color: isFinish ? Colors.green : Colors.grey,
                    thickness: 4
                ),
              ),
            ],
          ));
    } else {
      return Container(
          height: 40,
          child: Row(
            children: [
              SizedBox(width: 123),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: VerticalDivider(
                    width: 1,
                    color: isFinish ? Colors.green : Colors.grey,
                    thickness: 4
                ),
              ),
            ],
          )
      );
    }
  }
}

OutlinedButton getButton(context) {
  return OutlinedButton(
      onPressed: () {
        //todo 跳转到填表页
        if (_status > 1) {
          //已完成填表
          return null;
        }
        Navigator.of(context)
            .pushNamed(
              "/",
              // arguments: {
              //   "IdentityCard": "123456",
              //   "AffairsID": "2",
              // }
            )
            .then((value) => print(value));
      },
      child: Container(
        width: 170,
        height: 100,
        child: Column(
          children: [
            Text(
              "邀请你一起编辑《$_title》登记表",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.asset("images/table.png"),
          ],
        ),
      )
  );
}
