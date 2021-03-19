import 'package:flutter/material.dart';

import 'bookmarks.dart';

class mainDrawer extends StatelessWidget {
  const mainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.16,
            child: DrawerHeader(
              child: Text('Welcome!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: Color.fromRGBO(57, 62, 70, 10),
              ),
            ),
          ),
          ListTile(
            title: Text('ITEM 1', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bookmarks(),
                            ));
            },
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 2',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 3',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 4',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 5', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 6',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          ListTile(
            title: Text('ITEM 7',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          Divider(
            color: Color.fromRGBO(57, 62, 70, 10),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('“The Best Way To Get Started Is To Quit Talking And Begin Doing.”', style: TextStyle(fontSize: 15),),
          )
        ],
      ),
    );
  }
}