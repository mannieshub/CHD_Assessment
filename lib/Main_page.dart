import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_chd/Before_chatbot_page.dart';
import 'package:project_chd/Call_1669_page.dart';
import 'package:project_chd/Edit_profile.dart';
import 'Before_assessment_page.dart';

class M_Pa extends StatefulWidget {
  @override
  _M_PaState createState() => _M_PaState();
}

class _M_PaState extends State<M_Pa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF4FCCBD),
        title: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "HeartRisk Assessment",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Inter'),
              ),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem<String>(
                      value: 'menu1',
                      child: Text('Edit profile'),
                    ),
                    PopupMenuItem<String>(
                      value: 'menu2',
                      child: Text('Setting'),
                    ),
                    PopupMenuItem<String>(
                      value: 'menu3',
                      child: Text('Log out'),
                    ),
                  ];
                },
                onSelected: (String value) {
                  // ทำอะไรก็ตามที่คุณต้องการเมื่อเมนูถูกเลือก
                  if (value == 'menu1') {
                    // ดำเนินการสำหรับเมนูที่ 1
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E_Po(),
                      ),
                    );
                  } else if (value == 'menu2') {
                    // ดำเนินการสำหรับเมนูที่ 2
                  } else if (value == 'menu3') {
                    // ดำเนินการสำหรับเมนูที่ 3
                  }
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/user-icon.png'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0XFFF1F4F8),
        child: Container(
          color: Color(0XFFF1F4F8),
          margin: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "WELCOME BACK",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Inter'),
                                      ),
                                      Text(
                                        "ชิมมินกยู",
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                          fontSize: 17,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 35.0,
                                      backgroundImage:
                                          AssetImage('images/user-icon.png'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 30, 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "คำแนะนำเพื่อลดความเสี่ยงของตัวเอง",
                                        style: TextStyle(
                                          fontFamily: 'Kanit',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '● นอนให้เพียงพอ',
                                                style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  color: Color(0XFF5A5959),
                                                ),
                                              ),
                                              Text(
                                                '● ลดการกินของทอด',
                                                style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  color: Color(0XFF5A5959),
                                                ),
                                              ),
                                              Text(
                                                '● ออกกำลังกายสม่ำเสมอ',
                                                style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  color: Color(0XFF5A5959),
                                                ),
                                              ),
                                              Text(
                                                '● งดสูบบุหรี่',
                                                style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  color: Color(0XFF5A5959),
                                                ),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ความเสี่ยง",
                                        style: TextStyle(fontFamily: 'Kanit'),
                                      ),
                                      Text(
                                        "40%",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "* กรุณาเลือกเมนูที่คุณต้องการตรวจเกี่ยวกับโรคหลอดเลือดหัวใจ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Kanit',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        color: Color(0xFF4FCCBD),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/icon.png',
                                          // ระบุเส้นทางของไอคอนภาพ
                                          width: 50, // กำหนดความกว้างของไอคอน
                                          height: 50, // กำหนดความสูงของไอคอน
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CHD 10 years risk score",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "ประเมินความเสี่ยงในการเป็นโรคหลอดเลือดหัวใจภายใน 10 ปี",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.5,
                                              fontFamily: 'Kanit'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => B_As(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "คลิกเพื่อดูรายละเอียด",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                                fontFamily: 'Kanit',
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ],
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        color: Color(0xFF4FCCBD),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/icon1.png',
                                          // ระบุเส้นทางของไอคอนภาพ
                                          width: 50, // กำหนดความกว้างของไอคอน
                                          height: 50, // กำหนดความสูงของไอคอน
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Q&A",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "สอบถามเกี่ยวกับโรคหลอดเลือดหัวใจ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.5,
                                              fontFamily: 'Kanit'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => B_Ch(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "คลิกเพื่อเริ่มสอบถาม",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                                fontFamily: 'Kanit',
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ],
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        color: Color(0xFFCC4F4F),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/icon2.png',
                                          // ระบุเส้นทางของไอคอนภาพ
                                          width: 50, // กำหนดความกว้างของไอคอน
                                          height: 50, // กำหนดความสูงของไอคอน
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "1669",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "เบอร์โทรเมื่อเกิดเหตุฉุกเฉิน",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.5,
                                              fontFamily: 'Kanit'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => C_16(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "คลิกเพื่อดูรายละเอียด",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                                fontFamily: 'Kanit',
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ],
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
