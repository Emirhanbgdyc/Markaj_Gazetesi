import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import '../widgets/BottomMenu.dart';
import 'package:share_plus/share_plus.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: IconButton(onPressed: () {
              context.go('/home');
            }, icon: const Icon(Icons.close)),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.onError,
        title: Text(
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
                  const SizedBox(height: 16.0),
                  Center(
                    child:Image.asset(
                      "assets/image/home_img/bolu_takımlar.webp",
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Haber Kaynağı: Star Spor",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Bolu’da Kartalkaya Kayak Merkezi’nde 12 katlı ahşap bir otelde çıkan yangında alevler kısa sürede tüm binayı sardı. Yaşanan olayda ölüler ve yararlıların olduğu bilgisi geldi. Spor kulüplerinden konuyla ilgili sosyal medya hesaplarından geçmiş olsun ve taziye mesajları geldi.",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Türkiye’nin önemli kayak merkezlerinden 2 bin 200 rakımlı Kartalkaya’da bir otelde saat 03.30 sıralarında yangın çıktı. 12 katlı ahşap otelde restoran bölümünde başladığı belirlenen yangında alevler hızla yayıldı. Sömestir tatili nedeniyle doluluk oranının yüzde 80-90 oranında olduğu belirtilen, 237 kişinin konakladığı otelde alevlerin fark edilmesiyle 112 Acil Çağrı Merkezi’ne haber verilirken, personel de konukların tahliye edilmesi için zamana karşı mücadele başlattı.Bolu’da Kartalkaya Kayak Merkezi’nde 12 katlı ahşap bir otelde çıkan yangında alevler kısa sürede tüm binayı sardı. Yaşanan olayda ölüler ve yararlıların olduğu bilgisi geldi.Spor kulüplerinden konuyla ilgili sosyal medya hesaplarından geçmiş olsun ve taziye mesajları geldi. ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 16
                      ),
                    ),
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
      drawer: DrawerMenu(context),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
