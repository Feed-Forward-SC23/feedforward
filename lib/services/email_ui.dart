import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/constant.dart';
import 'email_sign_in.dart';

class EmailSignIn extends StatefulWidget {
  const EmailSignIn({super.key});

  @override
  State<EmailSignIn> createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {
  bool isLogin = false;
  bool isVisible = false;
  final _emailCont = TextEditingController();
  final _passCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailCont,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  icon: FaIcon(
                    FontAwesomeIcons.mailchimp,
                  ),
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                  hintText: "Email",
                ),
              ),
              buildHeight(15.0),
              TextField(
                controller: _passCont,
                obscureText: isVisible ? false : true,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock),
                  // suffixIcon: ,
                  // suffixIcon: isVisible
                  //     ? InkWell(
                  //         onTap: setState(() {
                  //           isVisible = !isVisible;
                  //         }),
                  //         child: const Icon(Icons.remove_red_eye))
                  //     : InkWell(
                  //         onTap: setState(() {
                  //           isVisible = !isVisible;
                  //         }),
                  //         child: const Icon(Icons.hide_source)),
                  suffix: isVisible
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: const Icon(Icons.remove_red_eye))
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: const Icon(Icons.hide_source)),
                  border: const OutlineInputBorder(),
                  label: const Text("Password"),
                  hintText: "Password",
                ),
              ),
              isLogin
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Forgot Password ?"),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              EmailPassword(
                                      context: context,
                                      email: _emailCont.text,
                                      password: _passCont.text)
                                  .passwordReset();
                            });
                          },
                          child: const Text('Reset'),
                        ),
                      ],
                    )
                  : const Text(""),
              buildHeight(30.0),
              isLogin
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 100.0),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        EmailPassword(
                                context: context,
                                email: _emailCont.text,
                                password: _passCont.text)
                            .signIn();
                      },
                      child: const Text("Login"),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 100.0),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        EmailPassword(
                                context: context,
                                email: _emailCont.text,
                                password: _passCont.text)
                            .signUp();
                      },
                      child: const Text("Signup"),
                    ),
              isLogin
                  ? Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("New User?"),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                            child: const Text('Sign-up'),
                          )
                        ],
                      ),
                    )
                  : Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ?"),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                            child: const Text('Log-in'),
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      )),
    );
  }
}
