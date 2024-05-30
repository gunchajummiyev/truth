import 'package:flutter/material.dart';
import 'package:truth/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truth/sign_up.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Form(
        key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .45,
                  decoration: BoxDecoration(
                   /* image: DecorationImage(
                      image: AssetImage("images/8.png"),
                    ),*/
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Welcome to \nTruth or Dare app",
                        style: GoogleFonts.sortsMillGoudy
                      (fontSize: 24,
                            color: Colors.grey[300],
                           // fontWeight: FontWeight.bold
                        ),
                      ),

                      customSizedBox(),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              ),

                            labelText: "Username",
                            labelStyle: TextStyle(color: Colors.grey[200]),
                            border: OutlineInputBorder(),
                            ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter username";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          username = value!;
                        },
                      ),
                      customSizedBox(),

                      SizedBox(height: 10.0),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey[200]),
                            border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter password";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          username = value!;
                        },
                      ),
                      customSizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MaterialButton(
                              child: Text("Sign up"),
                              onPressed: () {
                               Navigator.push(
                                context,
                              MaterialPageRoute(
                           builder: (context) => SignPage(),
                       ),
                        );
                       },
                       ),
                                MaterialButton(
                                    child: Text("Forgot password"),
                                    onPressed: () {}
                                ),
                      _loginButton()
                    ],
                  ),
                   ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
  Widget customSizedBox() =>
      SizedBox(
        height: 20,
      );

  Widget _loginButton() =>
      ElevatedButton(
          child: Text('Login',
              style: TextStyle(color: Colors.grey[900]),),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(username: username,),
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
  padding: EdgeInsets.all(18.0),
  ),

      );
}


