import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';
import 'search.dart';

class GameInfo extends StatefulWidget {
  GameInfo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GameInfoState createState() => _GameInfoState();
}

class _GameInfoState extends State<GameInfo> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  final List<String> games = ["Game1","Game2","Game3","Game4","Game5","Game6","Game7"];
  int _focusedIndex = 0;
  int _index = 0;
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }
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
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,0.0),
                    child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [ Text("${widget.title}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),)]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView.builder(
                            itemCount: numbers.length,
                            controller: PageController(viewportFraction: 0.7, initialPage: ((numbers.length)/2).toInt()),
                            onPageChanged: (int index) => setState(() => _index = index),
                            itemBuilder: (_, i) {
                              return Transform.scale(
                                scale: i == _index ? 1 : 0.9,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "${widget.title}",
                                      style: TextStyle(fontSize: 32),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                color: Color.fromRGBO(57, 62, 70, 10),
                elevation: 0.0,
                margin: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Details" , style: TextStyle(fontSize: 26 , fontWeight: FontWeight.bold , color: Colors.white), textAlign: TextAlign.center),
                    Divider(color: Colors.white,),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like" ,  style: TextStyle(color: Colors.white),),
                    Divider(color: Colors.white,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Genre:",textAlign: TextAlign.start,style: TextStyle(fontSize: 18 , color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("Arcade",textAlign: TextAlign.end,style: TextStyle(fontSize: 18 , color: Colors.white),)
                      ],),
                    
                  ],),
              ) // This trailing comma makes auto-formatting nicer for build methods.
            ])),
      ));
  }
}