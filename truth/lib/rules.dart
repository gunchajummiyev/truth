import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Rules());
}

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('How To Play. Rules',
          style: GoogleFonts.hindMadurai(color: Colors.indigo[200],
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
          backgroundColor: Colors.grey[800],
        ),
        body: ListView(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),

          child: Text(
            """             DOĞRULUK MU CESARET Mİ NASIL OYNANIR? 
                \nArkadaşları tanımak, sırlarını öğrenmek ve cesaretini 
                \nölçmek için yıllardır oynanan Doğruluk Mu Cesaret Mi (DC) oyunu 
                \ngençler ve yetişkinler için uygundur. 2000’li yılların popüler oyunlarından biri olan 
                \nDC oyununda sorular büyük önem taşır.DC oyununda ibre göstermek için genellikle şişe veya kalemler kullanılır. 
                \nŞişe çevirmece olarak da bilinen DC oyunu birkaç kişi bir araya gelerek oynanır. 
                \nOyunun en önemli aşamalarından bir tanesi de soru kısmıdır. 
                \nAncak oynanması kolay bir oyun olduğu için sorular ve verilen cesaretlik görevleri çabuk tükenir.
                
                
                
                            DOĞRULUK MU CESARET Mİ OYUNU BELLİ 
                                  BAŞLI KURALLARLA OYNANIR:
                        
                           \n- 3 veya daha fazla kişi ile oynanabilir.
                           \n- Kurallar önceden belirlenmelidir. Ek kurallar da koyulabilir.
                           \n- Sağlığa ve vücuda zarar verecek her soru ve görevden kaçınılmalıdır.
                           \n- Oyunda ilk olarak sıra belirlenmelidir. İlk şişe çevrilir ve ilk kişi seçilir.
                           \n- Seçimden sonra saat yönünde ya da tam tersi şekilde sırayı belirlenir.
                           \n- İlk oyuncu dilediği kişiye doğruluk mu cesaret mi sorusunu sorar.
                           \n-Eğer "doğruluk" denirse o oyuncu yöneltilen soruyu karşısında dürüst olmaya özen göstermelidir.
                           \n-Eğer "cesaret" denirse o oyuncu, soruyu soran oyuncu tarafından verilen görevi yerine getirmelidir.
                           \n-Doğruluk sorusuna cevap veren veya cesaret görevini yerine getiren oyuncu soru sorma hakkı kazanır. """,
            style: GoogleFonts.comfortaa(color: Colors.indigo[100],
              fontSize: 15,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
        ),
      ),
    );
  }
}


