import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  final VoidCallback signups;

  signin({Key? key, required this.signups}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  GlobalKey<FormState> keys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 187, 187),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: keys,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Required";
                        }
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Required";
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                ])),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 3, 36, 62),
              height: 60,
              minWidth: 300,
              hoverColor: Colors.green,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
              onPressed: () {
                if (keys.currentState!.validate()) {
                  print("ok");
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(text: "Have No Account ? ", children: [
              TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = widget.signups,
                  text: "Sign up",
                  style: TextStyle(color: Colors.green, fontSize: 23)),
            ]))
          ],
        ),
      )),
    );
  }
}
