import 'package:flutter/material.dart';
import 'package:uidesign/Pages/MyHome.dart';
import 'package:uidesign/Pages/NavBar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        //start appbar
        //drawer
        drawer: NavBar(),
        appBar: AppBar(
          title: Text(
            "AppBar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // centerTitle: true,
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),
          // ),
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
                Positioned(
                  right: 3,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.red,
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        child: Text("3")),
                  ),
                )
              ],
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          // backgroundColor: Color.fromARGB(255, 131, 11, 47),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )),
          ),
          bottom: TabBar(
              //  isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.star), text: "Feed"),
                Tab(icon: Icon(Icons.face), text: "Profile"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
              ]),
          elevation: 25,
          // titleSpacing: 17,
        ),

        //start body
        body: TabBarView(children: [
          myHome(),
          buildPage("Feed Page"),
          buildPage("Profile Page"),
          buildPage("Settings Page"),
        ]),
      ));

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 45),
        ),
      );
}
