import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              _buildHeader(),
            ],
          ),
          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 1.3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return _buildCategoryCard(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 90),
      decoration: BoxDecoration(
        color: Color(0xFFFFA726),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(150)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
          children: [
            Icon(Icons.arrow_back_ios_new,color: Colors.white),
          Center(
            child: Text(
              "                          Curse",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ),
            SizedBox(width: 130,),
            Icon(Icons.more_vert, color: Colors.white,)
    ]
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spanish",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      value: 0.43,
                      strokeWidth: 6,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "43%",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Beginner", style: TextStyle(fontSize: 16, color: Colors.orange)),
                Icon(Icons.keyboard_arrow_down, color: Colors.orange),
              ],
            ),
          ),
          SizedBox(height: 35),
          Row(
            children: [
              Icon(Icons.diamond, color: Colors.pinkAccent, size: 40),
              Icon(Icons.diamond, color: Colors.pinkAccent, size: 40),
              SizedBox(width: 5),
              Text("2 Milestones", style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(int index) {
    List<Map<String, dynamic>> categories = [
      {"title": "Basics \n4/5", "icon": Icons.menu_book, "progress": 4 / 5, "color": Colors.amber},
      {"title": "Occupations \n1/5", "icon": Icons.business, "progress": 1 / 5, "color": Colors.red},
      {"title": "Conversation \n3/5", "icon": Icons.chat, "progress": 3 / 5, "color": Colors.blue},
      {"title": "Places \n1/5", "icon": Icons.location_on, "progress": 1 / 5, "color": Colors.green},
      {"title": "Family members \n3/5", "icon": Icons.people, "progress": 3 / 5, "color": Colors.purple},
      {"title": "Foods \n2/5", "icon": Icons.fastfood, "progress": 2 / 5, "color": Colors.blueAccent},
    ];

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius:5, )],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: categories[index]["color"].withOpacity(0.2),
            radius: 25,
            child: Icon(categories[index]["icon"], color: categories[index]["color"], size: 24),
          ),
          Text(
            categories[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          LinearProgressIndicator(
            value: categories[index]["progress"],
            minHeight: 5,
            backgroundColor: Colors.grey.shade300,
            color: categories[index]["color"],
          ),
        ],
      ),
    );
  }
}
