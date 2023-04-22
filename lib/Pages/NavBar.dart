import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //user acount
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "flutter.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
            ),
            accountEmail: Text("example@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/antony.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("assets/images/antony2.png"),
                    fit: BoxFit.cover)),
          ),

          //NavBar

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Friends", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Request", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),

          //divider
          Divider(),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("Polices", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),

          //divider
          Divider(),

          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
