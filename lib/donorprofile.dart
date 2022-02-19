import 'package:flutter/material.dart';

class DonorProfile extends StatelessWidget {
  const DonorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Card(
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: SizedBox(
                      height: 500,
                      width: 550,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 30),
                                margin: const EdgeInsets.only(left: 120),
                                alignment: Alignment.centerRight,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 30),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  "Golam Hassan",
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(50),
                                      child: const Text(
                                        "Blood Group",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 20),
                                      margin: const EdgeInsets.only(left: 100),
                                      child: const Text(
                                        "A+",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    )
                                  ])
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 50),
                                  child: const Text(
                                    "Age",
                                    style: const TextStyle(color: Colors.red),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 195),
                                  child: const Text(
                                    "25",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ]),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(50),
                                  child: const Text(
                                    "Adress",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.only(top: 20),
                                  margin: const EdgeInsets.only(left: 100),
                                  child: const Text(
                                    "Munshigonj",
                                    style: const TextStyle(color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ]),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 50),
                                  child: const Text(
                                    "Phone no",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(top: 20),
                                    margin: const EdgeInsets.only(left: 140),
                                    child: const Text(
                                      "017090900",
                                      style: TextStyle(color: Colors.red),
                                    ))
                              ],
                            ),
                          ]),
                          Row(children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              margin: const EdgeInsets.only(left: 125),
                              child: RaisedButton(
                                onPressed: () => {},
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.green,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.grey[200],
                              ),
                            )
                          ])
                        ],
                      )),
                ),
              ),
            ),
          ),
        ));
  }
}
