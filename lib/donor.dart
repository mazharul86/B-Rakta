// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

import '/homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'donorprofile.dart';
import 'shadow.dart';

class DonorPageEn extends StatelessWidget {
  const DonorPageEn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FloatingActionButton(
            backgroundColor: const Color(0xffc75959),
            onPressed: () {
              Get.to(const HomePage2());
            },
            child: const FaIcon(FontAwesomeIcons.heartbeat),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(
                  height: 220,
                ),
                donorInfo(
                  name: "MI Sabit",
                  adress: "Sadar,Khal-East",
                  phone: "01523245785",
                  image: "images/sabit.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "MI Sabit",
                  adress: "Sadar,Konoha-Village",
                  phone: "01523245785",
                  image: "images/kakashi.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
                donorInfo(
                  name: "Shahed Ali",
                  adress: "Sadar,Super-market",
                  phone: "01523245785",
                  image: "images/shahed.jpg",
                  boxwidth: MediaQuery.of(context).size.width * 2 / 5,
                ),
              ],
            ),
            CustomShadow(
              text: 'Blood Group',
            )
          ],
        ),
      ),
    );
  }

  Widget donorInfo({name, adress, phone, image, boxwidth}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: HexColor("#DF1010")),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          Container(
            width: boxwidth,
            padding: const EdgeInsets.only(
              left: 10,
              right: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: HexColor("#DF1010"),
                    fontSize: 18,
                  ),
                ),
                Text(
                  adress,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: HexColor("#DF2626"),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
                Text(
                  phone,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    height: 1.5,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                  onTap: () {
                    Get.to(const DonorProfile());
                  },
                  child: Text(
                    "View Profile",
                    style: TextStyle(
                      color: HexColor("#2980b9"),
                      fontSize: 10,
                    ),
                  )),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {
                  Get.to(const DonorProfile());
                },
                child: const Icon(
                  Icons.phone_forwarded,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
