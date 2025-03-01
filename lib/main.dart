import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Task2.dart';
import 'Task3.dart';

void main() {
  runApp(
    DevicePreview(builder: (context)=>MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 308,
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Good Afternoon, Hanvitha  ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            "9000050493  ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Prepaid",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 180,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: MediaQuery.sizeOf(context).width / 2 - 50,
                            child: Container(
                              height: 7,
                              width: 15,
                              decoration: const BoxDecoration(color: Colors.red),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: MediaQuery.sizeOf(context).width / 2 - 20,
                            child: const Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Positioned(
                            top: 45,
                            left: MediaQuery.sizeOf(context).width / 2 - 5,
                            child: const Text("pack"),
                          ),
                          Positioned(
                            top: 70,
                            left: MediaQuery.sizeOf(context).width / 2 - 20,
                            child: const Text(
                              "Expired",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: MediaQuery.sizeOf(context).width / 2 - 120,
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            left: MediaQuery.sizeOf(context).width / 2 - 10,
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "Recharge",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.red, width: 1),
                            ),
                            child: const Center(
                              child: Text(
                                "!",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          const Text(
                            " Uh Oh! Your plan has expired. Recharge Now",
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width - 420,
                          ),
                          const Text("Recharge"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.white],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          width: 300,
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "An Exclusive Offer",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "applicable on recharges above RS 249",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Check Now >>",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "T&C apply",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              const Positioned(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 80,
                                      color: Color.fromRGBO(255, 102, 0, 1)),
                                ),
                              ),
                              Positioned(
                                top: 13,
                                left: MediaQuery.sizeOf(context).width / 2 - 200,
                                child: const Text(
                                  "GET",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: MediaQuery.sizeOf(context).width / 2 - 200,
                                child: const Text(
                                  "% OFF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 231,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Quick Actions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                          ),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            List<Map<String, dynamic>> actions = [
                              {"icon": Icons.refresh, "label": "Recharge"},
                              {"icon": Icons.payment, "label": "Pay Bill"},
                              {"icon": Icons.call, "label": "Landline"},
                              {"icon": Icons.wifi, "label": "Book Fiber"},
                              {"icon": Icons.sim_card, "label": "Upgrade to 4G"},
                              {"icon": Icons.dialpad, "label": "Choose Number"},
                              {
                                "icon": Icons.notifications_off,
                                "label": "Do Not Disturb"
                              },
                              {"icon": Icons.games, "label": "Games"},
                            ];
                            return Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orange.shade100,
                                  child: Icon(actions[index]['icon'],
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  actions[index]['label'],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}