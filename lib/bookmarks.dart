import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';
import 'search.dart';

class Bookmarks extends StatefulWidget {

  @override
  _BookmarksState createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  final List<String> games = ["Game1","Game2","Game3","Game4","Game5","Game6","Game7"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 62, 70, 10),
      bottomNavigationBar: new BottomAppBar(
        color: Color.fromRGBO(60, 65, 75, 10),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            bottomNavigationBarButtons(Icons.shopping_cart),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: bottomNavigationBarButtons(Icons.message),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: bottomNavigationBarButtons(Icons.person),
            ),
        bottomNavigationBarButtons(Icons.backpack),
          ],
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: Container(
        height: 90,
        width: 70,
        child: new FloatingActionButton(
          heroTag: "btn5",
          backgroundColor: Colors.white,
          onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(title: "My Gaming App"),
                            ));
          },
          child: Icon(Icons.home, color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      drawer: mainDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(60, 65, 75, 10),
        actions: [
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
            child: IconButton(
              icon: Icon(Icons.search),
              iconSize: 26.0,
              onPressed: () {
                showSearch(context: context, delegate: Search(games));
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [ Text("GAMEmarks", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [ Text("YOUR SAVED GAMES AT ONE PLACE", style: TextStyle(fontSize: 14, color: Colors.white),),]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 2, 16, 8),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ListView.builder(
                      itemCount: games.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.46,
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              child: Center(
                                  child: Text(
                                    games[index],
                                    style:
                                    TextStyle(color: Colors.blue, fontSize: 36.0),
                                  )),
                            ),
                          ),
                        );
                      }),
                ),
          ],
        ),
          ]), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}