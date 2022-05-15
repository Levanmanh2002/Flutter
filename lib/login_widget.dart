import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          SizedBox(
            height: 15,
          ),
          Text(
            'Login',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.directions_bus),
              border: OutlineInputBorder(),
              hintText: 'Username',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.directions_bus),
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
