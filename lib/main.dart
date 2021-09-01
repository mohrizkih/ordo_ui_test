import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ordo_ui_test/Test1/test1.dart';
import 'package:ordo_ui_test/Test2/test2.dart';
import 'package:ordo_ui_test/Test3/test3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Made by',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            SizedBox(height: 27),
            Text(
              'Moh Rizki H',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, height: 1),
            ),
            SizedBox(height: 80),
            NavigatorButton(
              title: 'Test 1',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Test1()));
              },
            ),
            NavigatorButton(
              title: 'Test 2',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Test2()));
              },
            ),
            NavigatorButton(
              title: 'Test 3',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Test3()));
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.only(bottom: 25)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
              height: 58,
              width: 305,
              color: Colors.black,
              child: Center(
                  child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
              ))),
        ));
  }
}
