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
                        Text("Beşiktaş'ta stoper krizi",
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
                      child: Text("Son 7 maçında sadece 1 galibiyet alabilen Beşiktaş, yarın Dolmabahçe'de Fenerbahçe ile oynayacağı derbiyi kazanıp hem moral bulmak hem de camiadaki kara bulutları bir nebze olsun dağıtmak istiyor.Ancak takımdaki eksikler zorlu karşılaşma öncesi can sıkıyor. Daha önce Necip Uysal'ın çapraz bağ sakatlığı sonrası sezonu kapatmasıyla eksilen savunma hattı, tendonundan operasyonu geçiren Gabriel Paulista'nın 3 ay sahalardan uzak kalacak olması büyük bir probleme dönüştü. Bunların üzerine Felix Uduokhai'nin sakatlığının gelmesi keyifleri iyice kaçırdı.Sabah'ın haberine göre geçen haftaki Hatayspor maçına Tayip Talha Sanuç ve Emirhan Topçu ikilisiyle çıkan siyah-beyazlılarda gözler Uduokhai'ye çevrildi.Dün idmana çıkmayan Nijerya asıllı Alman futbolcunun, bugün de antrenmana katılmaması durumunda derbide oynaması mümkün gözükmüyor. Teknik heyet, hafta boyunca yapılan idmanlarda Tayyip Talha ve Emirhan'la özel olarak ilgilendi.",
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