import 'package:flutter/material.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  bool checkEditUsername = false;
  bool checkEditPassword = false;
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Text("data"),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFD9D9D9),
                  ),
                  width: 300,
                  child: TextField(
                    readOnly: checkEditUsername,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: textEditingControllerUsername.toString(),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              checkEditUsername = !checkEditUsername;
                            });
                          },
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(10, 14, 0, 0)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFD9D9D9),
              ),
              child: TextField(
                readOnly: checkEditPassword,
                obscureText: checkEditPassword,
                controller: textEditingControllerPassword,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: textEditingControllerPassword.toString(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          checkEditPassword = !checkEditPassword;
                        });
                      },
                    ),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10, 14, 0, 0)),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0), // ตั้งค่าระยะห่างของ Container
                    child: TextField(
                      // ตัวอย่างการกำหนดคุณสมบัติของ TextField
                      decoration: InputDecoration(
                        hintText: 'กรอกข้อความ...',
                      ),
                    ),
                  ),
                ),
                // เพิ่ม Widget อื่น ๆ ต่อท้ายได้ตามต้องการ
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Card(
                            color: Colors.amber,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("ss")],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
