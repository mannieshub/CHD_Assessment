import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class C_bo extends StatefulWidget {
  @override
  _C_boState createState() => _C_boState();
}

class Massage {
  final String text;

  final bool isSenByme;
  const Massage({required this.text, required this.isSenByme});
}

class _C_boState extends State<C_bo> {
  TextEditingController textEditingControllerchat = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<Massage> messages = [
    Massage(
      text: 'ฮาโหล มายเนมอิสฮาทบอท',
      isSenByme: false,
    ),
    Massage(
      text: 'มายเนมอิสชิมมินกยู',
      isSenByme: true,
    ),
    Massage(
      text: 'แวอายูฟอมนะ ชิมมินกยู',
      isSenByme: false,
    ),
    Massage(
      text: 'แอมคัมฟอม เว็บตูนนะ',
      isSenByme: true,
    ),
    Massage(
      text: 'วิชวันอินเว็บตูน',
      isSenByme: false,
    ),
    Massage(
      text: 'ชีวิตเวรเอ๊ยจากจักรวาลปาร์คแทจุน',
      isSenByme: true,
    ),
  ];
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
                      fontWeight: FontWeight.bold, fontFamily: 'Inter'),
                ),
              ),
              Text(
                "Heartbot",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Inter'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/user-icon1.png'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
              child: GroupedListView<Massage, DateTime>(
            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
            // reverse: true,order: GroupedListOrder.DESC,
            elements: messages,
            groupBy: (message) => DateTime(2023),
            groupHeaderBuilder: (Massage message) => SizedBox(),
            itemBuilder: ((context, Massage message) => Align(
                //alignment: message.isSenByme? Alignment.centerRight: Alignment.bottomLeft,
                child: message.isSenByme
                    ? Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 10, 0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Card(
                                      color: Color(0xFFD9D9D9),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 7, 15, 7),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              final screenWidth =
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width;
                                              final targetWidth = screenWidth *
                                                  0.35; // กำหนดเป็น 70% ของความกว้างจอจริง
                                              final maxWidths = targetWidth >
                                                      constraints.maxWidth
                                                  ? constraints.maxWidth
                                                  : targetWidth;

                                              return Wrap(
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth: maxWidths),
                                                    child: Text(message.text,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Kanit Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  )
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage('images/user-icon.png'),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage('images/user-icon1.png'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Card(
                                      color: Color(0xFFD9D9D9),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 7, 15, 7),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LayoutBuilder(
                                            builder: (BuildContext context,
                                                BoxConstraints constraints) {
                                              final screenWidth =
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width;
                                              final targetWidth = screenWidth *
                                                  0.35; // กำหนดเป็น 70% ของความกว้างจอจริง
                                              final maxWidths = targetWidth >
                                                      constraints.maxWidth
                                                  ? constraints.maxWidth
                                                  : targetWidth;

                                              return Wrap(
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                        maxWidth: maxWidths),
                                                    child: Text(message.text,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Kanit Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  )
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
          )),
          Container(
            color: Color(0xFFD9D9D9),
            child: Padding(
              padding: EdgeInsetsDirectional.all(5),
              child: Container(
                margin: EdgeInsetsDirectional.zero,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 95, 95, 95), // สีขอบ
                    width: 1.5, // ความกว้างของเส้นขอบ
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: textEditingControllerchat,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'กรุณากรอกข้อความ...'.toString(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 35,
                        color: Colors.black,
                        onPressed: () {
                          final textsss = textEditingControllerchat.text;
                          final massage = Massage(
                            text: textsss,
                            isSenByme: true,
                          );

                          setState(() {
                            if (textsss != '') {
                              messages.add(massage);
                            }
                          });

                          textEditingControllerchat.clear();
                        },
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 14, 0, 14)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
