
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truth/rules.dart';
import 'package:truth/start_page.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  final username;

  const HomePage({Key? key, @required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery
        .of(context)
        .size
        .height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/gu.png"),
                    // Fotoğraf dosyasının yolu
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                  print('İlk Düğme Tıklandı!');
                },
                child: Text(
                  'Start',
                  style: GoogleFonts.sortsMillGoudy(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  fixedSize: Size(380, 85),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //primary: Colors.grey[800],
                  //onPrimary: Colors.grey[400],
                  padding: EdgeInsets.all(30.0),
                ),

              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rules()),
                  );

                  print('İkinci Düğme Tıklandı!');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(380, 85),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                 // primary: Colors.grey[800],
                  //onPrimary: Colors.grey[400],
                  padding: EdgeInsets.all(30.0),
                ),
                child: Text(
                  'How To Play',
                  style: GoogleFonts.sortsMillGoudy(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  _showExitConfirmationDialog();
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(380, 85),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //primary: Colors.grey[800],
                  //onPrimary: Colors.grey[400],
                  padding: EdgeInsets.all(30.0),
                ),
                child: Text(
                  'Exit',
                  style: GoogleFonts.sortsMillGoudy(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showExitConfirmationDialog() {
      showDialog(
      context: context,
      builder: (context) {
    return AlertDialog(
    title: Text('Exit'),
    content: Text('Are you sure you want to close the app?'),
    actions: [
    TextButton(
    onPressed: () {
    Navigator.of(context).pop(); // Dialog kapat
    },
    child: Text('Back'),
    ),
    TextButton(
    onPressed: () {
    Navigator.of(context).pop(); // Dialog kapat
    SystemNavigator.pop(); // Uygulamadan çıkış yap
    },
    child: Text('Yes'),
    ),

    ],
    );
    },
    );
  }
}


