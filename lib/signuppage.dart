import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  final Function() signin;
  signup({Key? key, required this.signin}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  GlobalKey<FormState> keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              Form(
                  key: keys,
                  child: Column(
                    children: [
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
                          decoration: InputDecoration(
                              hintText: "Enter Email",
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
                              hintText: "Confirm Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                    ],
                  )),
              MaterialButton(
                color: Color.fromARGB(255, 3, 36, 62),
                height: 60,
                minWidth: 300,
                hoverColor: Colors.green,
                child: Text(
                  "Create An Account ",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
                onPressed: () {
                  if (keys.currentState!.validate()) {
                    print("ok");
                  } else {
                    print("sorry");
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RichText(
                  text:
                      TextSpan(text: "Already Have An Account ?  ", children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = widget.signin,
                    text: "Sign in",
                    style: TextStyle(color: Colors.green, fontSize: 23)),
              ]))
            ],
          )
        ],
      )),
    );
  }
}
