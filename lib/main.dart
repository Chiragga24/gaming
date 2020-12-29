import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

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
  int _focusedIndex = 0;
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
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
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
            child: Icon(
              Icons.search,
              size: 26.0,
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
                        child: ScrollSnapList(
                          onItemFocus: _onItemFocus,
                          itemCount: numbers.length,
                          itemSize: 150,
                          dynamicItemSize: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.6,
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
                          }
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
                                  backgroundColor: Colors.purple,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time),
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
                                  backgroundColor: Colors.purple,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time),
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
                                  backgroundColor: Colors.purple,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time),
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
                                  backgroundColor: Colors.purple,
                                  onPressed: () {},
                                  child: Icon(Icons.access_time),
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
