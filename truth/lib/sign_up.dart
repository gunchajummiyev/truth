import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truth/homepage.dart';
import 'package:truth/start_page.dart';

void main() {
  runApp(SignPage());
}

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: sign(),
    );
  }
}

class sign extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signUp() {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;


    print('Name Lastname: $username');
    print('E-mail: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
          title: Text(
          'Enter your information',
          style: GoogleFonts.anton(color: Colors.grey[900])),
          backgroundColor: Colors.grey[500],
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }
          )
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Name Lastname',),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                // Add your login logic here
              },
              child: Text('Sign up',
              style: TextStyle(color: Colors.grey[900]),),
            ),

          ],
        ),
      ),
    );
  }
}