import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import '../../widgets/BottomMenu.dart';
import '../widgets/BottomMenu.dart';
import 'package:share_plus/share_plus.dart';

class HomeNewsDetailsScreens extends StatelessWidget {
  const HomeNewsDetailsScreens({super.key});

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
                      "assets/image/home_img/h_img_1.webp",
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
                      "BOLU KARTALKAYA YANGINI ÖLÜ YARALI BİLGİSİ: Otel yangınında ölenlerin isimleri...",
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
                      "Bolu Kartalkaya Otel yangınına ilişkin son dakika gelişmeleri yakından takip ediliyor. Sabah saatlerinde Kartalkaya Kayak Merkezi'ndeki 12 katlı ahşap bir otelde çıkan yangına çok sayıda itfaiye ekibi müdahale ediyor. 234 civarında misafirin kaldığı otelde gece 03.21 sıralarında ilk belirlemelere göre, restoran katında yangın çıktığını bildirdi. Binanın ahşap yapı olması nedeniyle alevler kısa sürede tüm oteli sardı. Otelden tahliye edilen tatilciler, merkezde bulunan 4 otele yerleştirilirken otelle ilgili yeni detaylar ortaya çıktı. ",
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
