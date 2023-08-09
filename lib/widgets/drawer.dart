import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvyBa_X8CIMlZw11ll7Ezq8enX9r38T5FE_3Cls_D8QWwVbTLMGaNtUkmrJuNea4qO-OE&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.deepPurple[200],
      child: ListView(
        children: [
          DrawerHeader(
           padding:EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.deepPurple[200]),
             accountName: const Text("Kavi Ghayal"),
              accountEmail: const Text("kavighayal@gmail.com"),
              currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage(imageUrl),

              ),
            ),
          ),
           ListTile(
            leading: Icon(CupertinoIcons.home,
            color: Colors.white,),
            title: Text(
              "Home",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              )
            )
          ),
            ListTile(
             leading: Icon(CupertinoIcons.profile_circled,
               color: Colors.white,),
             title: Text(
               "Profile",
               textScaleFactor: 1.4,
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
           ),
          ListTile(
              leading: Icon(CupertinoIcons.mail,
                color: Colors.white,),
              title: Text(
                  "E-Mail",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white,
                  )
              )
          )
        ],
      ),
      ),
    );
  }
}
