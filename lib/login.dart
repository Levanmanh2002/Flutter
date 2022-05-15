import 'package:bt_buoi1/login_widget.dart';
import 'package:bt_buoi1/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const login());
}

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

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
  final String _image =
      'https://vtv1.mediacdn.vn/thumb_w/1000/2021/3/21/photo-1-16163091284891198247605.jpg';

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(_image)),
            ),
            const LoginWidget(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    // ignore: avoid_types_as_parameter_names
                    MaterialPageRoute(builder: (login) => const welcome()));
              },
              child: const Text(
                'Forge Password?',
                style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: 350,
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
                    'Login',
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
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(110, 0, 0, 40),
                child: Row(
                  children: [
                    const Text('Or Login with '),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'img/facebook.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'img/twitter.png',
                      width: 30,
                      height: 20,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
