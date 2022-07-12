import 'package:flutter/material.dart';

import '../pages/pages.dart';

class ExpandWidget extends StatefulWidget {
  @override
  State<ExpandWidget> createState() => _ExpandWidgetState();
}

class _ExpandWidgetState extends State<ExpandWidget> {
  TextEditingController _username = TextEditingController();
  TextEditingController _userEmail = TextEditingController();
  final _userKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: Form(
                    key: _userKey,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.purple,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Value is empty";
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "Enter Your name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.purple,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Value is empty";
                                }
                              },
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Enter Your name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _userKey.currentState!.validate();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Welcome()));
                          },
                          child: Text("Submit"),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
