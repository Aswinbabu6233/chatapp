import 'package:chatapp/Screens/mainpage.dart';
import 'package:chatapp/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  bool _obscuretext = true;

  final _UsernameChecker = TextEditingController();

  final _PasswordChecker = TextEditingController();

  final _formstate = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Login",
            style: GoogleFonts.sansita(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formstate,
            child: Column(
              children: [
                Lottie.asset("assets/animation/login.json"),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "value is empty";
                    } else {
                      return null;
                    }
                  },
                  controller: _UsernameChecker,
                  decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "value is empty";
                    } else {
                      return null;
                    }
                  },
                  obscureText: _obscuretext,
                  controller: _PasswordChecker,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscuretext = !_obscuretext;
                          });
                        },
                        child: Icon(
                          _obscuretext
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    onPressed: () {
                      if (_formstate.currentState!.validate()) {
                        checker(context);
                      }
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.sansita(
                          color: Colors.black, fontSize: 16),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: GoogleFonts.sansita(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Signuppage();
                            },
                          ));
                        },
                        child: Text(
                          "Signup",
                          style: GoogleFonts.sansita(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  void checker(BuildContext cnte) {
    final _username = _UsernameChecker.text;
    final _password = _PasswordChecker.text;
    final _erromessage = "Username and password is not match";

    if (_username == _password) {
      Navigator.pushReplacement(cnte, MaterialPageRoute(
        builder: (contx1) {
          return mainpage();
        },
      ));
    } else {
      ScaffoldMessenger.of(cnte).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text(_erromessage)));
    }
  }
}
