import 'package:flutter/material.dart';

class C_16 extends StatefulWidget {
  @override
  _C_16State createState() => _C_16State();
}

class _C_16State extends State<C_16> {
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7EDCD1),
                  textStyle: TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                ),
                onPressed: () {
                  Navigator.pop(context);
                  // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Procedure for calling 1669",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0XFFF1F4F8),
        child: Container(
          color: Color(0XFFF1F4F8),
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                              padding: EdgeInsetsDirectional.all(10),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('images/Emer.jpg'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ขั้นตอนการโทร 1669",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Kanit',
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1. ตั้งสติ และโทรแจ้ง 1669",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2. ให้ข้อมูลว่าเกิดเหตุอะไร",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "3. บอกสถานที่เกิดเหตุให้ชัดเจน",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4. บอกเพศ อายุ อาการ จำนวน",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "5. บอกระดับความรู้สึกตัว",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "6. บอกความเสี่ยงที่อาจเกิดซ้ำ",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "7. บอกชื่อผู้แจ้ง + เบอร์โทรศัพท์",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "8. ช่วยเหลือเบื้องต้น",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "9. รอทีมกู้ชีพมารับเพื่อนำส่งโรงพยาบาล",
                                        style: TextStyle(
                                            fontFamily: 'Kanit', fontSize: 17),
                                      ),
                                    ],
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
