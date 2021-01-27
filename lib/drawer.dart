import 'package:flutter/material.dart';

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
              child: Text('Drawer Header', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          ListTile(
            title: Text('Item 2',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          ListTile(
            title: Text('Item 3',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
          ListTile(
            title: Text('Item 4',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}