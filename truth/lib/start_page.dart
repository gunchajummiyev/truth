import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truth/truth_page.dart';
import 'package:truth/dare_page.dart';
class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}
class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Center(
       child:Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [

    SizedBox(height: 50),
    ElevatedButton(
    onPressed: () {

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TruthPage()),
    );
    print('Dogruluk butonuna tikladin!');
    },
    child: Text(
    'Truths',
    style: GoogleFonts.sortsMillGoudy(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    ),

    style: ElevatedButton.styleFrom(
    fixedSize: Size(380, 85),
    shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(25),
    ),
    //primary: Colors.pink[200],
    //onPrimary: Colors.grey[800],
    padding: EdgeInsets.all(30.0),
    ),


    ),
    SizedBox(height: 70),
    ElevatedButton(
    onPressed: () {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarePage()),
      );
    print('Cesaret butonuna tikladin!');
    },
    style: ElevatedButton.styleFrom(
    fixedSize: Size(380, 85),
    shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(25),
    ),
   // primary: Colors.blue[200],
    //onPrimary: Colors.grey[800],
    padding: EdgeInsets.all(30.0),
    ),
    child: Text(
    'Dares',
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
}
