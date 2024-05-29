import 'package:chatapp/Screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signuppage extends StatefulWidget {
  Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final _passwordsignup = TextEditingController();

  final _confirmpasswordSignup = TextEditingController();

  final _state = GlobalKey<FormState>();

  bool _obscuretext = true;
  bool _obscuretext2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Form(
              key: _state,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Signup",
                      style: GoogleFonts.sansita(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    //  controller: _UsernameChecker,
                    decoration: InputDecoration(
                        labelText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: _obscuretext2,
                    controller: _passwordsignup,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscuretext2 = !_obscuretext2;
                            });
                          },
                          child: Icon(
                            _obscuretext2
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value is empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: _obscuretext,
                    controller: _confirmpasswordSignup,
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
                        labelText: " Confirm Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "value is empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange)),
                      onPressed: () {
                        if (_state.currentState!.validate()) {
                          check(context);
                        } else {}
                      },
                      child: Text(
                        "Signup",
                        style: GoogleFonts.sansita(
                            color: Colors.black, fontSize: 16),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: GoogleFonts.sansita(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return loginpage();
                              },
                            ));
                          },
                          child: Text(
                            "Login",
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
        ),
      ),
    );
  }

  void check(BuildContext cntxx) {
    final _password = _passwordsignup.text;
    final _confirm = _confirmpasswordSignup.text;

    if (_password == _confirm) {
      Navigator.push(cntxx, MaterialPageRoute(
        builder: (contx1) {
          return loginpage();
        },
      ));
    } else {
      ScaffoldMessenger.of(cntxx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text(
            "Password and confirm password Deosn't match",
            style: GoogleFonts.sansita(),
          )));
    }
  }
}
