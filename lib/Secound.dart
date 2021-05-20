import 'package:flutter/material.dart';
import 'package:flutter_app/tset.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF051665),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF051665),
        title: Title(
          color: Colors.white, child: Text(
          "Now Playing",
        ),
        ),
        leading: Icon(Icons.arrow_back),
      ),
      // body: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      body: Column(
// Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //FF022F52
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView(

                padding: new EdgeInsets.fromLTRB(10, 20, 10, 0),
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newApp(),)
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/f.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                              child: Text(
                                "Frozen",
                                style:
                                TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(0, 0, 1, 0),
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
                                  child: Text(
                                    "5M review",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding:
                                    new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                    child: Icon(
                                      Icons.alarm,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  child: Text(
                                    "2h 25m",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    padding:
                                    new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10, 10, 10, 0),
                                  child: Text(
                                    "2019/12/31",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              padding: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                              height: 10,
                              width: 50,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),

              //test
                ],
              ),
            ),
          )
        ],
      ),
      // ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
