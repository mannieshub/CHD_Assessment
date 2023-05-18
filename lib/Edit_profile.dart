import 'package:flutter/material.dart';

class E_Po extends StatefulWidget {
  @override
  _E_PoState createState() => _E_PoState();
}

class _E_PoState extends State<E_Po> {
  bool checkEditUsername = true;
  bool checkEditPassword = true;
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  List<bool> _Selectage = List.generate(3, (_) => false);
  List<bool> _Selectgender = List.generate(2, (_) => false);
  int gender = 0;
  int age = 1;
  bool Diabetes = false;
  bool Stroke = false;
  bool Obesity = false;
  bool Hypertension = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0XFFF1F4F8),
        child: Container(
          color: Color(0XFFF1F4F8),
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          margin: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ข้อมูลส่วนตัว",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'Kanit',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 65.0,
                                    backgroundImage:
                                        AssetImage('images/user-icon.png'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "ชื่อผู้ใช้",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(25, 10, 10, 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0XFFD9D9D9),
                                              ),
                                              width: 200,
                                              child: TextField(
                                                readOnly: checkEditUsername,
                                                controller:
                                                    textEditingControllerUsername,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        "Username".toString(),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(Icons.edit),
                                                      color: Colors.black,
                                                      onPressed: () {
                                                        setState(() {
                                                          checkEditUsername =
                                                              !checkEditUsername;
                                                        });
                                                      },
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 14, 0, 0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "รหัสผ่าน",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0XFFD9D9D9),
                                              ),
                                              width: 200,
                                              child: TextField(
                                                readOnly: checkEditPassword,
                                                obscureText: checkEditPassword,
                                                controller:
                                                    textEditingControllerPassword,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'Password'.toString(),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(Icons.edit),
                                                      color: Colors.black,
                                                      onPressed: () {
                                                        setState(() {
                                                          checkEditPassword =
                                                              !checkEditPassword;
                                                        });
                                                      },
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 14, 0, 0)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "อายุ",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ToggleButtons(
                                            constraints: BoxConstraints(
                                                maxWidth: 35,
                                                minWidth: 35,
                                                minHeight: 35,
                                                maxHeight: 35),
                                            isSelected: _Selectage,
                                            children: [
                                              Icon(Icons.add),
                                              Text("$age"),
                                              Icon(Icons.remove),
                                            ],
                                            onPressed: (int index) {
                                              setState(() {
                                                for (int i = 0;
                                                    i < _Selectage.length;
                                                    i++) {
                                                  if (_Selectage[1]) {
                                                    _Selectage[1] = false;
                                                  } else {
                                                    _Selectage[i] = i == index;
                                                  }
                                                }
                                                if (_Selectage[0] &&
                                                    age < 100) {
                                                  age++;
                                                  print("อายุ = $age");
                                                }
                                                if (_Selectage[2] && age > 1) {
                                                  age--;
                                                  print("อายุ = $age");
                                                }
                                              });
                                            },
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "เพศ",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      ToggleButtons(
                                        constraints: BoxConstraints(
                                            maxWidth: 35,
                                            minWidth: 35,
                                            minHeight: 35,
                                            maxHeight: 35),
                                        isSelected: _Selectgender,
                                        children: <Widget>[
                                          Container(
                                              width: 20,
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.male,
                                                    size: 20,
                                                    //color: Colors.black,
                                                  ),
                                                ],
                                              )),
                                          Container(
                                              width: 20,
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.female,
                                                    size: 20.0,
                                                    //color: Colors.black,
                                                  ),
                                                ],
                                              )),
                                        ],
                                        onPressed: (int index) {
                                          setState(() {
                                            for (int i = 0;
                                                i < _Selectgender.length;
                                                i++) {
                                              _Selectgender[i] = i == index;
                                            }
                                            if (_Selectgender[0]) {
                                              gender = 1;
                                              print("ชาย = 1");
                                            } else {
                                              gender = 2;
                                              print("หญิง = 2");
                                            }
                                          });
                                        },
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 5),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "ประวัติการแพทย์",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 20, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Card(
                                        color: Color(0xFFD9D9D9),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: Diabetes,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      Diabetes = value!;
                                                      print(
                                                          " Diabetes = $Diabetes");
                                                    });
                                                  },
                                                ),
                                                Text(
                                                  "โรคเบาหวาน(Diabetes)",
                                                  style: TextStyle(
                                                      fontFamily: 'Kanit',
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: Stroke,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Stroke = value!;
                                                          print(
                                                              " Stroke = $Stroke");
                                                        });
                                                      },
                                                    ),
                                                    Text(
                                                      "โรคหลอดเลือดในสมอง(Stroke)",
                                                      style: TextStyle(
                                                          fontFamily: 'Kanit',
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Checkbox(
                                                      value: Obesity,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Obesity = value!;
                                                          print(
                                                              " Obesity = $Obesity");
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "โรคอ้วน(Obesity)",
                                                      style: TextStyle(
                                                          fontFamily: 'Kanit',
                                                          fontSize: 16),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Checkbox(
                                                      value: Hypertension,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Hypertension = value!;
                                                          print(
                                                              " Hypertension = $Hypertension");
                                                        });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "ความดันโลหิตสูง(Hypertension)",
                                                      style: TextStyle(
                                                          fontFamily: 'Kanit',
                                                          fontSize: 16),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 10, 40, 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // กำหนดความโค้งของมุมปุ่ม
                                      ),
                                      textStyle: TextStyle(
                                          fontSize:
                                              21), // เปลี่ยนสีปุ่มเป็นสีแดง
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                                    },
                                    child: Text(
                                      'ยกเลิก',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'kanit'),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 10, 40, 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // กำหนดความโค้งของมุมปุ่ม
                                      ),
                                      textStyle: TextStyle(
                                          fontSize:
                                              21), // เปลี่ยนสีปุ่มเป็นสีแดง
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                                    },
                                    child: Text(
                                      'ยืนยัน',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'kanit'),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
