// @dart=2.9
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'homepage.dart';

class DonorForm extends StatefulWidget {
  const DonorForm({Key key}) : super(key: key);

  @override
  _DonorFormState createState() => _DonorFormState();
}

class _DonorFormState extends State<DonorForm> {
  bool val1 = false;
  bool val2 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: SizedBox(
                  height: 550,
                  width: 550,
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      child: const Text(
                        "Blood doner form",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 30),
                          margin: const EdgeInsets.only(left: 40),
                          child: const Text("Phone No"),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 30),
                          margin: const EdgeInsets.only(left: 150),
                          child: const Text("0160987677"),
                        )
                      ],
                    ),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 30),
                        margin: const EdgeInsets.only(left: 40),
                        child: const Text("Age"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 30),
                        margin: const EdgeInsets.only(left: 180),
                        child: const Text("44"),
                      )
                    ]),
                    const SizedBox(
                      height: 90,
                    ),
                    CheckboxListTile(
                      contentPadding: const EdgeInsets.only(left: 35),
                      value: val1,
                      onChanged: (value) {
                        setState(
                          () {
                            val1 = value;
                          },
                        );
                      },
                      activeColor: Colors.grey,
                      title: const Text("I will not harrass any user"),
                    ),
                    CheckboxListTile(
                      contentPadding: const EdgeInsets.only(left: 35),
                      value: val2,
                      onChanged: (value) {
                        setState(
                          () {
                            val2 = value;
                          },
                        );
                      },
                      activeColor: Colors.grey,
                      title:
                          const Text("I have read all the terms & conditions"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Text(
                        "Agree",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Get.to(const HomePage2());
                      },
                      color: HexColor('#DF1010'),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
