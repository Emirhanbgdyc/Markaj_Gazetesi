import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import 'package:share_plus/share_plus.dart';




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
                      "assets/image/futbol_img/f_img_2.jpg",
                      height: 400,
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
                      "Hakan Çalhanoğlu için herkesin beklediği haberi sonunda duyurdu. A Milli Takım'ın yıldız futbolcusu geri dönmeye hazırlanıyor. İşte Inter'de yaşanan Hakan Çalhanoğlu gelişmesi...",
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
                      child: Text("UEFA Şampiyonlar Ligi'nde Monaco'yu konuk edecek olan Inter'in teknik direktörü Simone Inzaghi, açıklamalarda bulundu. Inzaghi, milli futbolcu Hakan Çalhanoğlu hakkında da konuştu.Şu ana kadar lig ve Şampiyonlar Ligi'nde gösterdikleri performansla ilgili olarak takımının doğru yolda olduğunu ve alınan sonuçlardan memnun olduklarını belirtten İnzaghi, Devler Ligi'nde ilk 8'e girme konusunda henüz son adımı atmadıklarını ifade etti.",
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
                        Share.share('Selam markaj gazetesinden sana bir haber gönderdim');
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