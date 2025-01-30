import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import 'package:share_plus/share_plus.dart';



class TenisNewsDetailsfive extends StatelessWidget {
  const TenisNewsDetailsfive({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: IconButton(onPressed: (){
              context.go('/basketbolcategory');
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
                    child:Image.asset(
                      "assets/image/basketbol_img/b_img_1.jpg",
                      height: 350,
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
                        Text("Avustralya Açık'ta Jannik Sinner çeyrek finale yükseldi",
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
                      child: Text("Sezonun ilk grand slam tenis turnuvası Avustralya Açık'ta tek erkeklerin dünya 1 numarası İtalyan Jannik Sinner çeyrek finale çıktı.Tek erkeklerde son şampiyon Jannik Sinner, 3 saat 13 dakika süren maçta Danimarkalı Holger Rune'yi (13 numaralı seribaşı) 6-3, 3-6, 6-3 ve 6-2'lik setlerle 3-1 yendi.İtalyan Lorenzo Sonego ise ABD'li Learner Tien'i 3-1 (6-3, 6-2, 3-6, 6-1) mağlup ederek kariyerinde ilk kez grand slam turnuvalarında çeyrek finale kaldı.Çeyrek finalde Sinner, Alex Michelsen-Alex de Minaur (8) eşleşmesinin, Sonego ise Gael Monfils-Ben Shelton (21) karşılaşmasının kazananı ile mücadele edecek.Keys, Rybakina'yı elediTek kadınlarda ABD'li Madison Keys (19), 2022 Wimbledon şampiyonu Kazak Elena Rybakina'yı (6) 6-3, 1-6 ve 6-3'lük setlerle 2-1 yenerek adını son 8 arasına yazdırdı.Ukraynalı Elina Svitolina (28) ise Rus tenisçi Veronika Kudermetova karşısında 6-4, 6-1 biten setlerle 2-0 galip geldi ve çeyrek finalde Keys'in rakibi oldu.",

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
      bottomNavigationBar:BottomMenu(),

    );
  }
}