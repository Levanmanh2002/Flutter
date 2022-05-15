import 'package:bt_buoi1/sign_widget.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const sign());
}

// ignore: camel_case_types
class sign extends StatelessWidget {
  const sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.redAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
            ),
            const SignWidget(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: const <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "FORGET PASSWORD?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFcc0000),
                      Color(0xFFcc0000),
                    ],
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: RichText(
                text: const TextSpan(
                    text: "New User?  ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 11, 11, 11), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 16),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
