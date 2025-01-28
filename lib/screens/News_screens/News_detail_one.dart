import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';



class NewsDetailOneScreen extends StatelessWidget {
  const NewsDetailOneScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.close)),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.onError,
        title:  Text(
          "MARKAJ",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.onError,
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/image/newsone.webp",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Haber Kaynağı: Star Spor",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8.0),
                        Text("Suudi Arabistan ligi ekiplerinden Al Hilal, Brezilyalı yıldız Neymar'ın sözleşmesinin feshedildiğini duyurdu.",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Al-Hilal, Neymar'ın ayrılığını duyurdu. Suudi Arabistan ekibinden yapılan açıklamada Brezilyalı futbolcunun sözleşmesinin feshedildiği belirtildi.Kulüpten yapılan açıklamada, 'Al-Hilal ve Neymar, sözleşmenin feshi için karşılıklı olarak anlaşmaya vardı. Teşekkürler ve iyi şanslar Neymar.' denildi.Paris Saint Germain'den 2023/24 sezonunda ayrılıp Al-Hilal'e 90 milyon euro karşılığında imza atan Neymar'ın sözleşmesi sezon sonunda bitiyordu.Sakatlığı nedeniyle uzun süre forma giyemeyen Brezilyalı futbolcu, bu sezon sadece iki maçta sahaya çıktı. Neymar, Al-Hilal'e imza attığı sezon Brezilya Milli Takımı'nda çapraz bağlarını koparmış ve geçtiğimiz yıl takıma dönmüştü.Al-Hilal'de yedi maçta sahaya çıkan 32 yaşındaki Neymar, bir gol ve üç asistle oynadı.Serbest oyuncu statüsünde olan Neymar'ın altyapısından yetiştiği Santos'a imza atması bekleniyor. Neymar, 2009'da A takıma çıktığı Santos'ta 2013'e kadar forma giydi ve sonrasında Barcelona'ya transfer oldu.",

                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontSize: 16
                        ),
                      )
                  ),
                  Center(
                    heightFactor: 3,
                    child: ElevatedButton.icon(
                      onPressed: () {
                      },
                      icon: const Icon(Icons.share, color: Colors.white),
                      label: const Text(
                        "Paylaş",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(21, 23, 26, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),

      drawer:DrawerMenu(context),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar:BottomMenu(),

    );
  }
}