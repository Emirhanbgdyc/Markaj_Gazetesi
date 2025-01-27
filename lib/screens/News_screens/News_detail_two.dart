import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';




class NewsDetailTwoScreen extends StatelessWidget {
  const NewsDetailTwoScreen({super.key});


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
                      "assets/image/newstwo.webp",
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
                    Text(
                      "Şenol Güneş galibiyete odaklandı",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Süper Lig'e kötü bir başlangıç yapan Trabzonspor, bugün konuk edeceği Kasımpaşa karşısında galibiyetten başka bir şey düşünmüyor.Sabah'ta yer alan habere göre kadro dışı bırakılan Bardhi, Denswil, Umut Bozok ve Orsic'in yanı sıra sakatlıkları bulunan Savic, Okay ve Arif Boşluk'un forma giymesi beklenmiyor. Son idmana katılmayan Eren Elmalı dün kendini iyi hissedince takımla çalıştı.Teknik direktör Şenol Güneş, oyuncularına özellikle bulundukları konumdan bir an önce kurtulmak için sadece galibiyete ve plana odaklanmaları yönünde konuşmalar yaptı. Tecrübeli teknik adamın, hataları ekibiyle birlikte detaylı şekilde analiz ettiği, oyun içerisinde yaşanan kopmalar, basit top kayıpları ve yakalanan pozisyonları değerlendirme üzerine özel çalışmalar yaptığı öğrenildi.",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontSize: 16,
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
      bottomNavigationBar: const BottomMenu(),

    );
  }
}