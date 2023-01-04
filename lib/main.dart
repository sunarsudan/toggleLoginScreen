import 'package:flutter/material.dart';
import 'package:loginscreen/authority.dart';
import 'package:loginscreen/singinpage.dart';

void main(List<String> args) {
  runApp(loginpage());
}

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpages(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class loginpages extends StatefulWidget {
  const loginpages({super.key});

  @override
  State<loginpages> createState() => _loginpagesState();
}

class _loginpagesState extends State<loginpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(child: isAuthority()),
    );
  }
}
