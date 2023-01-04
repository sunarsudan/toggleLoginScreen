import 'package:flutter/material.dart';
import 'package:loginscreen/signuppage.dart';
import 'package:loginscreen/singinpage.dart';

class isAuthority extends StatefulWidget {
  const isAuthority({super.key});

  @override
  State<isAuthority> createState() => _isAuthorityState();
}

class _isAuthorityState extends State<isAuthority> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) =>
      isLogin ? signin(signups: toggle) : signup(signin: toggle);
  void toggle() {
    setState(() {
      isLogin = !isLogin;
    });
  }
}
