// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:m_r_s/badappbar.dart';

import 'ambulance.dart';
import 'bloodbank.dart';
import 'drawerheadershape.dart';
import 'drawerstyle.dart';
import 'finalblood.dart';
import 'healthtips.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          drawer: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 560,
              width: 266,
              child: Drawer(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ClipPath(
                      clipper: MyDrawerClipper(),
                      child: DrawerHeader(
                        decoration:
                            const BoxDecoration(color: Color(0xffC91010)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage('assets/pp.png'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'O+',
                                  style: TextStyle(
                                      color: Color(0xffffffff), fontSize: 20),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                  'Saidur Sohel\nNoapara\nLouhojong,Munshigonj',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffffffff), fontSize: 15)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const DrawerStyle(),
                    ListTile(
                      onTap: () {},
                      tileColor: const Color((0xffffff)),
                      title: const Text(
                        'About us',
                        style: TextStyle(
                          color: Color(0xffC91010),
                        ),
                      ),
                      leading: const FaIcon(
                        FontAwesomeIcons.spinner,
                        color: Color(0xffC91010),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            'Log out',
                            style: TextStyle(
                                color: Color(0xffC91010), fontSize: 18),
                          ),
                        ),
                        IconButton(
                            color: const Color(0xffC91010),
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.signOutAlt))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xffDF1010),
          ),
          body: Stack(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .24,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Get.to(const Finalblood());
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                            offset: Offset(2, 2)),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(
                                        height: 70,
                                        width: 90,
                                        child: Image(
                                          image: AssetImage("image/blood.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        "রক্ত",
                                        style: TextStyle(
                                            color: Color(0xffDF1010),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Get.to(const AmbulancePage());
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                            offset: Offset(2, 2)),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(
                                        height: 70,
                                        width: 90,
                                        child: Image(
                                          image:
                                              AssetImage("image/ambulance.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        "এম্বুলেন্স",
                                        style: TextStyle(
                                            color: Color(0xffDF1010),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Get.to(const BloodBankPage());
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                            offset: Offset(2, 2)),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(
                                        height: 70,
                                        width: 90,
                                        child: Image(
                                          image: AssetImage(
                                              "image/blood-bank.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        "ব্লাড ব্যাংক",
                                        style: TextStyle(
                                            color: Color(0xffDF1010),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Flexible(
                            child: InkWell(
                              onTap: () {
                                Get.to(const LastPage());
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                            offset: Offset(2, 2)),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      SizedBox(
                                        height: 70,
                                        width: 90,
                                        child: Image(
                                          image: AssetImage(
                                              "image/healthtips.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        "স্বাস্থ্য পরামর্শ",
                                        style: TextStyle(
                                            color: Color(0xffDF1010),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            "image/homepage.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              BloodyShadow(
                text: 'HomePage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
