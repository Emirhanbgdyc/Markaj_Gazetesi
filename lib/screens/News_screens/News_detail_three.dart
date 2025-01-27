import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';




class NewsDetailThreeScreen extends StatelessWidget {
  const NewsDetailThreeScreen({super.key});


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
        backgroundColor: Colors.white,
        title: Text(
          "MARKAJ",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Center(
                    child: Image.asset(
                      "assets/image/newsthree.webp",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Text(
                          "Haber Kaynağı: Star Spor",
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 8.0),
                        Text("FENERBAHÇE HABERİ - Mourinho'dan Beşiktaş derbisi öncesi Galatasaray uyarısı!",
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
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("""
Mourinho'dan Beşiktaş derbisi öncesi Galatasaray uyarısı! Son dakika Fenerbahçe haberleri: Trendyol Süper Lig'in 15. haftasında Tüpraş Stadyumu'nda Beşiktaş'a konuk olacak Fenerbahçe'de karşılaşmanın hazırlıkları sürüyor. Sarı-lacivertli takımın teknik direktör Jose Mourinho, perşembe günkü antrenmanda öğrencilerine bir konuşma yaptı. İşte o sözler... (Star Spor Haberi ) Jose de öğrencilerini bu yönde motive etmeyi sürdürüyor. HATA İSTEMİYORUM Oyuncularına nakış gibi planlarını işleyen Portekizlinin perşembe günkü idmanda, "Sizden derbide iyi bir sonuç bekliyorum ve liderliği istiyorum" diyerek seslendiği öğrenildi. Beşiktaş'ın durumunun kendilerini ilgilendirmediğinin altını çizen Mourinho, rehavet uyarısında da bulundu. Galatasaray derbisinin kendilerine ders olması gerektiğini de vurgulayan Jose'nin, "Galatasaray'a karşı yaptığınız hataları bu maçta görmek istemiyorum" diyerek de sert bir uyarı yaptığı belirtildi.""",style:TextStyle(
                          fontSize: 19
                      ) ,)
                  ),
                  const Padding(
                    padding: EdgeInsets.all(17.5),
                    child: Text(" ",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
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