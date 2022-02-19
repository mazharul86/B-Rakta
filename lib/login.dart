// @dart=2.9
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

import 'createaccount.dart';
import 'homepage.dart';
import 'shadow.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({Key key}) : super(key: key);

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  bool isHiddePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 210,
                      ),
                      Text(
                        'Log In',
                        style:
                            TextStyle(color: HexColor('#DF1010'), fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: HexColor('#DF1010'),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: HexColor('#DF1010'),
                                ),
                              ),
                              labelText: 'Phone Number',
                              hintText: "Enter your phone number.",
                              labelStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              hintStyle: const TextStyle(color: Colors.black45),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            obscureText: isHiddePassword,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: HexColor('#DF1010'),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: HexColor('#DF1010'),
                                ),
                              ),
                              labelText: 'Password',
                              hintText: "Enter your password.",
                              suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: const Icon(Icons.visibility)),
                              labelStyle: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              hintStyle: const TextStyle(color: Colors.black45),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Text(
                              "Log In",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            onPressed: () {
                              Get.to(const HomePage2());
                            },
                            color: HexColor('#DF1010'),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const CreateAccount());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              color: Colors.white24,
                              child: const Text(
                                "Create Account ?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Text(
                              "Guest Log In",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            onPressed: () {
                              Get.to(const HomePage2());
                            },
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomShadow(
              text: 'Munshigonj Rokto Seba',
            )
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddePassword == true) {
      isHiddePassword = false;
    } else {
      isHiddePassword = true;
    }

    setState(() {});
  }
}
