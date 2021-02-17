import 'package:flutter/material.dart';
import 'package:gaming/categories.dart';
import 'package:gaming/gameinfo.dart';
import 'package:gaming/splashscreen.dart';
import 'search.dart';
import 'drawer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Color(int.parse("0xff7CEA9C"))
      // ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        centerTitle: true,
        title: Text(widget.title),
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
                  padding: const EdgeInsets.fromLTRB(24.0,8.0,0.0,0.0),
                  child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [ Text("POPULAR THIS WEEK", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),)]),
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
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => GameInfo(title: "Game ${i + 1}",),
                            ));
                                },
                                  child: Card(
                                  color: Colors.white,
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Game ${i + 1}",
                                      style: TextStyle(fontSize: 32),
                                    ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Card(
                elevation: 0,
                color: Color.fromRGBO(57, 62, 70, 10),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ Text("CATEGORIES", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white ),)]),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          categoryWidget("Arcade", (Icons.alarm), "btn1"),
                          categoryWidget("Mystery", (Icons.alarm), "btn2"),
                          categoryWidget("Puzzle", (Icons.alarm), "btn3"),
                          categoryWidget("Adventure",(Icons.alarm), "btn4"),
                        ],
                      ),
                    ]
                  ),
                ),
              ),
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("New Releases", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),)
                  ],),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 2, 16, 8),
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numbers.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.46,
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              child: Center(
                                  child: Text(
                                    numbers[index].toString(),
                                    style:
                                    TextStyle(color: Colors.blue, fontSize: 36.0),
                                  )),
                            ),
                          ),
                        );
                      }),
                ),
              ]
            ),

            Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Recommended For You", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),)
                      ],),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 2, 16, 8),
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numbers.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.46,
                            child: Card(
                              color: Colors.white,
                              child: Container(
                                child: Center(
                                    child: Text(
                                      numbers[index].toString(),
                                      style:
                                      TextStyle(color: Colors.blue, fontSize: 36.0),
                                    )),
                              ),
                            ),
                          );
                        }),
                  ),
                ]
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class bottomNavigationBarButtons extends StatelessWidget {
  final IconData iconWidget;
  bottomNavigationBarButtons(this.iconWidget){}
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconWidget),
      color: Colors.white,
    );
  }
}


class categoryWidget extends StatelessWidget {
  final String text;
  final IconData iconWidget;
  final String tag;
  categoryWidget(this.text, this.iconWidget, this.tag){}
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new FloatingActionButton(
            heroTag: tag,
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Categories(title: this.text),
                            ));
            },
            child: Icon(iconWidget, color: Colors.black),
          ),
          SizedBox(
            height: 3,
          ),
          Text(text, style: TextStyle(color: Colors.white),)
        ]
    );
  }
}

