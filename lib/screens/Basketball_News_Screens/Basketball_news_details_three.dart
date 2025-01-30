import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import 'package:share_plus/share_plus.dart';



class BasketballNewsDetailsThree extends StatelessWidget {
  const BasketballNewsDetailsThree({super.key});


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
<<<<<<< Updated upstream
                    child:Image.asset(
                      "assets/image/basketbol_img/b_img_3.jpg",
                      height: 350,
                      fit: BoxFit.cover,
=======
                    child:Expanded(
                      child: Image.asset(
                        "assets/image/basketbol_img/b_img_3.jpg",
                        height: 350,
                        fit: BoxFit.cover,
                      ),
>>>>>>> Stashed changes
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
                        Text("Türkiye Sigorta Basketbol Süper Ligi'nin 16. haftasında Anadolu Efes, deplasmanda Yalovaspor Basketbol'u 110-83 yendi. Anadolu Efes 4 gün önce de EuroLeague maçında Milano'yu 110-66 mağlup etmişti.",
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
                      child: Text("Türkiye Sigorta Basketbol Süper Ligi'nin 16. haftasında Anadolu Efes, deplasmanda Yalovaspor Basketbol'u 110-83 yendi.Karşılaşmanın ilk çeyreğini 25-13 önde geçen Anadolu Efes, devre arasına 54-33 üstün gitti.Üçüncü periyodu 89-56 önde bitiren Anadolu Efes, müsabakadan 110-83 galip ayrıldı.",
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