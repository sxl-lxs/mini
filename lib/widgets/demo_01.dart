import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.green,
        child: Text(
          "文本",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        )
    );
  }
}

class ButtomDeomo extends StatelessWidget {
  const ButtomDeomo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text("漂浮按钮"),
        ),
        FlatButton(onPressed: () {}, child: Text("扁平按钮")),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("data"),
          color: Colors.green,
          textColor: Colors.white,
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("OutlineButton"),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      ],
    );
  }
}

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.add),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        Container(
          width: double.infinity,
          child: Image.network(
            "https://bkimg.cdn.bcebos.com/pic/b3119313b07eca80653838478b6880dda144ad342572?x-bce-process=image/resize,m_lfit,h_500,limit_1/format,f_auto",
            fit: BoxFit.fitWidth,
          ),
        ),
        Image.asset('images/image.jpg'),
      ],
    );
  }
}

class CheckDemo extends StatefulWidget {
  const CheckDemo({Key? key}) : super(key: key);

  @override
  _CheckDemoState createState() => _CheckDemoState();
}

class _CheckDemoState extends State<CheckDemo> {
  bool _check = false;
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: _check,
          onChanged: (v) {
            setState(() {
              _check = v!;
            });
          },
        ),
        Switch(
          value: _switch,
          onChanged: (v) {
            setState(() {
              _switch = v;
            });
          },
        )
      ],
    );
  }
}

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.5,
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
          SizedBox(height: 16),
          Container(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              value: .5,
              valueColor: AlwaysStoppedAnimation(Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tag");
      },
      onDoubleTap: () {
        print("double");
      },
      child: Text("data"),
    );
  }
}

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _contoller = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _contoller.dispose();
    _pass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextField(
              controller: _contoller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "label",
                hintText: "default",
              ),

            ),
            SizedBox(height: 8),
            TextField(
              controller: _pass,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
                labelText: "label",
                hintText: "default",
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: (){
                print(_contoller.text);
              },
              child: Text("提交"),
              color: Colors.blue,
            ),
          ],
        ));
  }
}


