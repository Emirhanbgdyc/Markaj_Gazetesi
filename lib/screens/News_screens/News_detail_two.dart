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
        title: const Text(
          "MARKAJ",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: Color.fromRGBO(146, 35, 42, 1),
          ),
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
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 16.0), // Boşluk ekleme
                  Center(
                    child: Image.asset(
                      "assets/image/newstwo.webp", // Resim dosyasını ekleyin
                      height: 300, // Resim yüksekliği
                      fit: BoxFit.cover, // Resmi sığdırma
                    ),
                  ),
                  const SizedBox(height: 14.0), // Resim ve metin arasında boşluk
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Text(
                          "Haber Kaynağı: Star Spor", // Kaynağınızı buraya yazın
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic, // İtalik stil
                            color: Colors.grey, // Gri renk
                          ),
                          textAlign: TextAlign.left, // Sola hizalama
                        ),
                        SizedBox(height: 8.0), // Kaynak ve başlık arasında boşluk
                        Text("Şenol Güneş galibiyete odaklandı",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0), // Başlık ile haber arasında boşluk
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Süper Lig'e kötü bir başlangıç yapan Trabzonspor, bugün konuk edeceği Kasımpaşa karşısında galibiyetten başka bir şey düşünmüyor.Sabah'ta yer alan habere göre kadro dışı bırakılan Bardhi, Denswil, Umut Bozok ve Orsic'in yanı sıra sakatlıkları bulunan Savic, Okay ve Arif Boşluk'un forma giymesi beklenmiyor. Son idmana katılmayan Eren Elmalı dün kendini iyi hissedince takımla çalıştı.Teknik direktör Şenol Güneş, oyuncularına özellikle bulundukları konumdan bir an önce kurtulmak için sadece galibiyete ve plana odaklanmaları yönünde konuşmalar yaptı. Tecrübeli teknik adamın, hataları ekibiyle birlikte detaylı şekilde analiz ettiği, oyun içerisinde yaşanan kopmalar, basit top kayıpları ve yakalanan pozisyonları değerlendirme üzerine özel çalışmalar yaptığı öğrenildi.",style:TextStyle(
                          fontSize: 19
                      ) ,)
                  ),
                  const Padding(
                    padding: EdgeInsets.all(17.5),
                    child: Text("",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left:17.5,

                    ),
                    child: Text("",style: TextStyle(
                      fontSize: 20,

                    ),),
                  ),
                  Center(
                    heightFactor: 3,
                    child: ElevatedButton.icon(
                      onPressed: () {
                      },
                      icon: const Icon(Icons.share, color: Colors.white), // Paylaş simgesi
                      label: const Text(
                        "Paylaş",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(21, 23, 26, 1), // Arka plan rengi
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