import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_chd/Main_page.dart';
import 'package:project_chd/Sign_In.dart';

//textformfield 264
class S_Up extends StatefulWidget {
  @override
  _S_UpState createState() => _S_UpState();
}

class _S_UpState extends State<S_Up> {
  bool checkEditUsername = true;
  bool checkErrorEditUsername = false;
  Color colorErrorUsename = Color(0xFFD9D9D9);
  String textErrorUsername = '';
  bool checkEditPassword = true;
  bool checkErrorEditPassword = false;
  Color colorErrorPassword = Color(0xFFD9D9D9);
  String textErrorPassword = '';
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  List<bool> _SelectSign_Up = <bool>[false, true];
  Color color = Color(0xFFD9D9D9);

  final _formKey = GlobalKey<FormState>();
  Icon Eyes = Icon(
    Icons.visibility_off,
    color: Colors.grey,
  );

  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  bool CheckEye = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(
                  child: Text("${snapshot.error}"),
                ));
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                  color: Color(0xFF24B6A4),
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          margin:
                              EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                                mainAxisSize: MainAxisSize.max,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(50, 60, 50, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                          child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 30, 10, 60),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "HeartRisk Assessment",
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                        Positioned(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 140, 30, 0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Card(
                                            color: Color.fromARGB(
                                                255, 232, 236, 233),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 20, 20, 20),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 10, 10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      0, 4, 0),
                                                          //color: Color(0xFFD9D9D9),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFD9D9D9),
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10.0)),
                                                          ),
                                                          child: ToggleButtons(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        110,
                                                                    minWidth:
                                                                        110,
                                                                    minHeight:
                                                                        37,
                                                                    maxHeight:
                                                                        37),
                                                            isSelected:
                                                                _SelectSign_Up,
                                                            children: <Widget>[
                                                              Text(
                                                                "Sign In",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                              Text(
                                                                "Sign Up",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                            onPressed:
                                                                (int index) {
                                                              setState(() {
                                                                for (int i = 0;
                                                                    i <
                                                                        _SelectSign_Up
                                                                            .length;
                                                                    i++) {
                                                                  _SelectSign_Up[
                                                                          i] =
                                                                      i ==
                                                                          index;
                                                                }
                                                              });
                                                              if (_SelectSign_Up[
                                                                  0]) {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            S_In(),
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                            borderRadius:
                                                                const BorderRadius
                                                                        .all(
                                                                    Radius
                                                                        .circular(
                                                                            10)),
                                                            fillColor:
                                                                Colors.white,
                                                            renderBorder: false,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 10),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                "Create your Account",
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Wrap(
                                                          children: [
                                                            Text(
                                                              'Fill out the information below to create your account.',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    margin:
                                                                        EdgeInsetsDirectional
                                                                            .zero,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: checkErrorEditUsername
                                                                            ? Colors.red
                                                                            : Color(0xFFD9D9D9), // สีขอบ
                                                                        width:
                                                                            1.5, // ความกว้างของเส้นขอบ
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    width: 270,
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {
                                                                        if (value ==
                                                                                null ||
                                                                            value
                                                                                .isEmpty) {
                                                                          setState(
                                                                              () {
                                                                            checkErrorEditUsername =
                                                                                true;
                                                                            textErrorUsername =
                                                                                '* กรุณากรอกอีเมลของท่าน';
                                                                            textEditingControllerUsername.clear();
                                                                          });

                                                                          print(
                                                                              'checkErrorEditUsername = $checkErrorEditUsername');
                                                                        } else if (!value.contains('@') ||
                                                                            !value.contains('.')) {
                                                                          setState(
                                                                              () {
                                                                            checkErrorEditUsername =
                                                                                true;
                                                                            textErrorUsername =
                                                                                '* กรุณากรอกอีเมลในรูปแบบที่ถูกต้อง';
                                                                            textEditingControllerUsername.clear();
                                                                          });
                                                                        } else {
                                                                          setState(
                                                                              () {
                                                                            checkErrorEditUsername =
                                                                                false;
                                                                          });

                                                                          print(
                                                                              'checkErrorEditUsername = $checkErrorEditUsername');
                                                                        }
                                                                        return null;
                                                                      },
                                                                      controller:
                                                                          textEditingControllerUsername,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        border:
                                                                            InputBorder.none,
                                                                        hintText:
                                                                            'Email'.toString(),
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            20,
                                                                            14,
                                                                            0,
                                                                            14),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      1, 0, 3),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(""),
                                                                  Text(
                                                                    checkErrorEditUsername
                                                                        ? textErrorUsername
                                                                        : "",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red),
                                                                  ),
                                                                  Text(""),
                                                                  Text(""),
                                                                  Text(""),
                                                                  Text(""),
                                                                  Text(""),
                                                                  Text(""),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    margin:
                                                                        EdgeInsetsDirectional
                                                                            .zero,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: checkErrorEditPassword
                                                                            ? Colors.red
                                                                            : Color(0xFFD9D9D9), // สีขอบ
                                                                        width:
                                                                            1.5, // ความกว้างของเส้นขอบ
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    width: 270,
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {
                                                                        if (value ==
                                                                                null ||
                                                                            value.isEmpty) {
                                                                          setState(
                                                                              () {
                                                                            checkErrorEditPassword =
                                                                                true;
                                                                            textErrorPassword =
                                                                                '* กรุณากรอกพาสเวิร์ด';
                                                                            textEditingControllerPassword.clear();
                                                                          });

                                                                          print(
                                                                              'checkErrorEditPassword = $checkErrorEditPassword');
                                                                        } else {
                                                                          setState(
                                                                              () {
                                                                            checkErrorEditPassword =
                                                                                false;
                                                                            textErrorPassword =
                                                                                '';
                                                                          });

                                                                          print(
                                                                              'checkErrorEditPassword = $checkErrorEditPassword');
                                                                        }
                                                                        return null;
                                                                      },
                                                                      obscureText:
                                                                          checkEditPassword,
                                                                      controller:
                                                                          textEditingControllerPassword,
                                                                      decoration: InputDecoration(
                                                                          border: InputBorder.none,
                                                                          hintText: 'Password'.toString(),
                                                                          suffixIcon: IconButton(
                                                                            icon:
                                                                                Eyes,
                                                                            color:
                                                                                Colors.black,
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {
                                                                                checkEditPassword = !checkEditPassword;

                                                                                if (CheckEye) {
                                                                                  Eyes = Icon(
                                                                                    Icons.visibility,
                                                                                    color: Colors.grey,
                                                                                  );
                                                                                  CheckEye = false;
                                                                                } else {
                                                                                  Eyes = Icon(
                                                                                    Icons.visibility_off,
                                                                                    color: Colors.grey,
                                                                                  );
                                                                                  CheckEye = true;
                                                                                }
                                                                              });
                                                                            },
                                                                          ),
                                                                          contentPadding: EdgeInsetsDirectional.fromSTEB(20, 14, 0, 0)),
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
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 1, 0, 3),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(""),
                                                            Text(
                                                              checkErrorEditPassword
                                                                  ? textErrorPassword
                                                                  : "",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red),
                                                            ),
                                                            Text(""),
                                                            Text(""),
                                                            Text(""),
                                                            Text(""),
                                                            Text(""),
                                                            Text(""),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Color(
                                                                        0xFF24B6A4),
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            65,
                                                                            13,
                                                                            65,
                                                                            13),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30), // กำหนดความโค้งของมุมปุ่ม
                                                                ),

                                                                textStyle: TextStyle(
                                                                    fontSize:
                                                                        15), // เปลี่ยนสีปุ่มเป็นสีแดง
                                                              ),
                                                              onPressed: () {
                                                                if (_formKey
                                                                        .currentState!
                                                                        .validate() &&
                                                                    !checkErrorEditUsername &&
                                                                    !checkErrorEditPassword) {
                                                                  // If the form is valid, display a snackbar. In the real world,
                                                                  // you'd often call a server or save the information in a database.
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    const SnackBar(
                                                                        content:
                                                                            Text('กำลังดำเนินการบันทึกข้อมูล...')),
                                                                  );
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              M_Pa(),
                                                                    ),
                                                                  );
                                                                } else {}
                                                              },
                                                              child: Text(
                                                                'Sign Up',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontFamily:
                                                                      'Inter',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 20,
                                                                  10, 0),
                                                      child: Container(
                                                          color:
                                                              Color(0xFFD9D9D9),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30,
                                                                        30,
                                                                        30,
                                                                        30),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "เผื่อมีพวก API login มาใช้",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          )))
                                                ],
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.zero,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage('images/Heart.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                        Positioned(
                          top: 41,
                          left: 30,
                          child: Image(
                            image: AssetImage('images/Robot.png'),
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
