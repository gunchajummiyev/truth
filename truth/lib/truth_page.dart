import 'dart:math';
import 'package:flutter/material.dart';
import 'package:truth/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttericon/entypo_icons.dart';
void main() {
    runApp(TruthPage());
}

class TruthPage extends StatefulWidget {
    @override
    _TruthPageState createState() => _TruthPageState();
}

class _TruthPageState extends State<TruthPage> {
    List<String> truthQuestions = [
        'Söylediğinız veya yaptığınız \nbir şeyi silmek için \nzamanda geriye \ngidebilseydiniz,bu \nne olurdu?',
        'En kötü alışkanlığınız nedir?',
        'Birdenbire görünmez olsaydın ne yapardın?',
        'Toplumda en utanç verici anınız neydi?',
        'Benim hakkımda neyi sevmiyorsun?',
        'Bir gün karşı cins olarak uyanırsan, \nilk yapacağın şey nedir?',
        'Hala yaptığın en çocukça şey nedir?',
        'Kimsenin senin hakkında bilmediği bir şey nedir?',
        'Hayatınızda bir şey değiştirebilseydiniz, ne olurdu?',
        'En büyük pişmanlığın nedir?',
        'Bir ilişkinizdeki en büyük korkunuz nedir?',
        'Çocukluktaki lakabın neydi?',
        'En çok neyi hayal ediyorsun?',
        'Şansınız olursa hangi ülkede yaşamak istersiniz?',
        'En büyük korkun ne?',
        'Birinin sana yaptığı en kötü şey neydi?',
        'Gördüğün en garip rüya neydi?',
        'İnsanların senin hakkında düşündüklerinin \naksine kötü olan gerçek yönün nedir?',
        '[Oyundaki herhangi biri] hakkındaki ilk izleniminiz neydi?',
        'Saklamanız söylendiği bir sırrı hiç anlattınız mı?',
        'Odanın her bir kişi hakkında bir tane olumlu, bir tane olumsuz şey söyleyin',
        'Hayatında yaptığın en çılgın şey nedir?',
        'Sosyal medyada en son kimi stalkladın',
    ];
    List<String> usedQuestions = [];
    String currentQuestion = '';

    @override
    void initState() {
        super.initState();
        getRandomQuestion();
    }

    void getRandomQuestion() {
        if (usedQuestions.length == truthQuestions.length) {
            usedQuestions.clear();
        }
        do {
            currentQuestion = truthQuestions[Random().nextInt(truthQuestions.length)];
        } while (usedQuestions.contains(currentQuestion));

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
                'Your Truth Question',
                    style: GoogleFonts.happyMonkey(color: Colors.blue[200],
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
    color: Colors.pink[200],
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
        'Question',
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
    fontSize: 25,
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
        print('Yeni soru: $currentQuestion');
        },
        child: Icon(Entypo.shuffle),
        backgroundColor: Colors.blue[200],
        elevation: 20.0,
        splashColor: Colors.grey,
        heroTag: "customTag",

        ),
        ),
    ),

        );
    }
    }


