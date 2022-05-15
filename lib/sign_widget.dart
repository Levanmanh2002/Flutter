import 'package:flutter/material.dart';

class SignWidget extends StatelessWidget {
  const SignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            'Sign to continue',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'User Name',
              prefixIcon: Icon(Icons.perm_identity_outlined),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              prefixIcon: Icon(Icons.credit_card_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
