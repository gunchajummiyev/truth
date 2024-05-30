import 'dart:math';
import 'package:flutter/material.dart';
import 'package:truth/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/entypo_icons.dart';

void main() {
  runApp(DarePage());
}

class DarePage extends StatefulWidget {
  @override
   createState() => _DarePageState();
}


class _DarePageState extends State<DarePage> {
  List<String> truthQuestions = [
    'Ailene telefon et \nve onları çok \nsevdiğini söyle?',
    'Birine telefonunu ver ve istediği herhangi birine mesaj atsın.',
    'Komşunun evine git ve tuz iste.',
    'Bu masadan birinin taklidini yap ama kim olduğunu söyleme',
    'Bir dakika boyunca plank pozisyonunda dur',
    'Masadaki insanların en sevmediğin özelliklerini söyle',
    'Instagramda karşına çıkan ilk 3 hikayeye cevap ver',


  ];
  List<String> usedQuestions = [];
  String currentQuestion = '';

  @override
  void initState() {
    super.initState();
    // Sayfa ilk yüklendiğinde rastgele bir soru seç
    getRandomQuestion();
  }

  void getRandomQuestion() {

    if (usedQuestions.length == truthQuestions.length) {
      usedQuestions.clear();
    }

    // Rastgele bir soru seç
    do {
      currentQuestion = truthQuestions[Random().nextInt(truthQuestions.length)];
    } while(usedQuestions.contains(currentQuestion));

    usedQuestions.add(currentQuestion);

    setState(() {
      currentQuestion = currentQuestion;
      truthQuestions[Random().nextInt(truthQuestions.length)];
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text(
            'Your Need To Do',
            style: GoogleFonts.happyMonkey(color: Colors.pink[200],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 400,
            margin: EdgeInsets.only(top: 1.0),
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(15, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Text(
                  'To Do',
                  style: GoogleFonts.happyMonkey(
                    color: Colors.grey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),


                SizedBox(height: 50),
                Text( currentQuestion,
                  style: GoogleFonts.poiretOne(
                    color: Colors.grey[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 260.0),
          child: FloatingActionButton(

            onPressed: () {
              getRandomQuestion();

              print('Yeni cesaret: $currentQuestion');
            },
            child: Icon(Entypo.shuffle),
            backgroundColor: Colors.pink[200],
            elevation: 20.0,
            splashColor: Colors.grey,
            heroTag: "customTag",

          ),
        ),
      ),

    );
  }
}



