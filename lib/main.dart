import 'package:flutter/material.dart';
import 'search.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Gaming App'),
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
      backgroundColor: Colors.blue,
      bottomNavigationBar: new BottomAppBar(
        color: Colors.blue[900],
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.backpack),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.admin_panel_settings_rounded),
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.explore),
              color: Colors.white,
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: Container(
        height: 90,
        width: 70,
        child: new FloatingActionButton(
          heroTag: "btn5",
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: Icon(Icons.person),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      drawer: Drawer(
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
      ),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.blue[900],
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
                            children: [ Text("POPULAR THIS WEEK", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, ),)]),
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
                                color: Colors.blue[900],
                                elevation: 6,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Game ${i + 1}",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Card(
                elevation: 2.0,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [ Text("CATEGORIES", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, ),)]),
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new FloatingActionButton(
                                  heroTag: "btn1",
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time, color: Colors.black,),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Arcade")
                              ]
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new FloatingActionButton(
                                  heroTag: "btn2",
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Arcade")
                              ]
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new FloatingActionButton(
                                  heroTag: "btn3",
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Arcade")
                              ]
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new FloatingActionButton(
                                  heroTag: "btn4",
                                  backgroundColor: Colors.white,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text("Arcade")
                              ]
                          ),
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
                    Text("New Releases", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
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
                        Text("Recommended For You", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
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
