import 'package:flutter/material.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("1"), value: "1"),
      DropdownMenuItem(child: Text("2"), value: "2"),
      DropdownMenuItem(child: Text("3"), value: "3"),
      DropdownMenuItem(child: Text("4"), value: "4"),
    ];
    return menuItems;
  }

  String selectedValue = "1";

  bool checkEditUsername = false;
  bool checkEditPassword = false;
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String textdd = '';
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
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final screenWidth = MediaQuery.of(context).size.width;
                    final targetWidth =
                        screenWidth * 0.5; // กำหนดเป็น 70% ของความกว้างจอจริง
                    final maxWidth = targetWidth > constraints.maxWidth
                        ? constraints.maxWidth
                        : targetWidth;

                    return Wrap(
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: maxWidth),
                          child: Text(
                            'Lorem ipsum dolor sit amet,piscing elit. Sed ac lobortis libero, in condimentum mauris.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
            Text('drop'),
            Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // สีเทา
                    borderRadius: BorderRadius.circular(15), // กำหนดรูปร่าง
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: DropdownButton(
                        isExpanded: true,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: dropdownItems),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
