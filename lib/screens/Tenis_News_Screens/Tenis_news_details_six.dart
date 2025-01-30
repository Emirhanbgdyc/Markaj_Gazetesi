import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import 'package:share_plus/share_plus.dart';



class TenisNewsDetailsSix extends StatelessWidget {
  const TenisNewsDetailsSix({super.key});


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
                        Text("Alman Alexander Zverev ve ABD'li Coco Gauff, Avustralya Açık'ta adını üçüncü tura yazdırdı. İşte detaylar...",
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
                      child: Text("Melbourne kentinde düzenlenen turnuvanın dördüncü gün akşam seansında ikinci tur maçları oynandı.Tek erkeklerde dünya 2 numarası Alman raket Alexander Zverev, İspanyol rakibi Pedro Martinez'i 6-1, 6-4 ve 6-1'lik setlerle 3-0 yenerek üçüncü tura çıktı.Tek erkeklerde 6 numaralı seribaşı Norveçli raket Casper Ruud ise Çekyalı rakibi Jakub Mensik'e 2-6, 6-3, 1-6 ve 4-6'lık setlerle 3-1 mağlup olarak turnuvaya ikinci turda veda etti.Büyük Britanyalı Jack Draper (15 numaralı seribaşı), Avustralyalı Thanasi Kokkinakis'i 6-7, 6-3, 3-6, 7-5 ve 6-3'lük setlerle 3-2 yenerek adını bir üst tura yazdırdı. - Gauff, üçüncü turdaTek kadınlarda dünya 3 numarası ABD'li raket Coco Gauff, Büyük Britanyalı Jodie Burrage'i 6-3 ve 7-5'lik setlerle 2-0 yenerek üçüncü tura çıktı.",

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