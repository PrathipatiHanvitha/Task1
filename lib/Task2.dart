import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortsScreen(),
    );
  }
}

class ShortsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shorts", style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.search, color: Colors.white,),
          Icon(Icons.more_vert, color: Colors.white,)
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://res.cloudinary.com/dwja7zmvm/image/upload/v1721811371/make13_xw9awx.jpg',
              fit: BoxFit.cover,
            ),
          ),
         Positioned(
           left: 15,
           bottom: 140,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.white,
                 ),
                 child: ClipOval(
                     child: Image.network(
                       "https://res.cloudinary.com/dwja7zmvm/image/upload/v1721969904/its_me_sby26f.jpg",
                       fit: BoxFit.cover,
                     )),
               ),
               Text("  Hanvi_Prathipati", style: TextStyle(color: Colors.white, fontSize: 15, ),),
               SizedBox(width: 5,),
               Container(
                 height: 32,
                 width: 80,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                 ),
                 child: Center(child: Text(" Subscribe",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)),
               )
             ],
           ),
          ),
          Positioned(
          left: 15,
            bottom: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Smile makes me more beautiful...", style: TextStyle(color: Colors.white, fontSize: 15),)
              ],
            ),
          ),
          Positioned(
            right: 15,
            bottom: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildIcon(Icons.thumb_up_alt_outlined, "1.4M"),
                _buildIcon(Icons.thumb_down_alt_outlined, "dislike"),
                _buildIcon(Icons.comment_bank_outlined, "4,095"),
                _buildIcon(Icons.share_outlined, "Share"),
                _buildIcon(Icons.rotate_90_degrees_cw_outlined,"19K")
              ],

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.app_shortcut), label: "Shorts"),
                BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 40), label: " "),
                BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: "Subscriptions"),
                BottomNavigationBarItem(icon: Icon(Icons.face), label: "You"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        SizedBox(height: 5),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
        SizedBox(height: 15),
      ],
    );
  }
}
