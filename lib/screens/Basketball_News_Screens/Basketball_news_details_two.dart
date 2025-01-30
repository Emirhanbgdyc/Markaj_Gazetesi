import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import 'package:share_plus/share_plus.dart';



class BasketballNewsDetailsTwo extends StatelessWidget {
  const BasketballNewsDetailsTwo({super.key});


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
                      "assets/image/basketbol_img/b_img_2.jpg",
                      height: 350,
                      fit: BoxFit.cover,
=======
                    child:Expanded(
                      child: Image.asset(
                        "assets/image/basketbol_img/b_img_2.jpg",
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
<<<<<<< Updated upstream
                        Text("Kadın basketbolunun ilham verici takımlarından Mersin Çukurova Basketbol Spor Kulübü, Çimsa ile yeni isim sponsorluğu sözleşmesi imzaladı",
=======
                        Text("Kadın basketbolunun ilham verici takımlarından Mersin Çukurova Basketbol Spor Kulübü, Çimsa ile yeni isim sponsorluğu sözleşmesi imzaladı.",
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                      child: Text("Konuyla ilgili değerlendirmelerde bulunan Çimsa CEO’su Umut Zenar, hayatın her alanında kadınların desteklenmesini şirket olarak en büyük önceliklerden biri olarak ele aldıklarının altını çizerken, “Çimento farklı malzemeleri, büyük yapıları bir arada tutma işlevi gören bir malzeme. Bir birleştirici, güçlendirici... Biz sporu da aynı bu şekilde görüyoruz. Sporun, ülkemizi ve insanımızı bir arada tutan çok önemli bir değer olduğuna inanıyoruz. Özellikle kadınlar sahada oldukça, onların temsil ettiği değerler ülkemizde yayılmaya devam edecek. Biz de bu yolculukta kadınlarımızın yanında olacağız. Sporun birleştirici gücünü, bir kez daha, bu toprakların kalkınması, sosyal gelişimi için kullanacağız” ifadelerini kullandı.Expand article logo  Okumaya devam et",
=======
                      child: Text("Konuyla ilgili değerlendirmelerde bulunan Çimsa CEO’su Umut Zenar, hayatın her alanında kadınların desteklenmesini şirket olarak en büyük önceliklerden biri olarak ele aldıklarının altını çizerken, “Çimento farklı malzemeleri, büyük yapıları bir arada tutma işlevi gören bir malzeme. Bir birleştirici, güçlendirici... Biz sporu da aynı bu şekilde görüyoruz. Sporun, ülkemizi ve insanımızı bir arada tutan çok önemli bir değer olduğuna inanıyoruz. Özellikle kadınlar sahada oldukça, onların temsil ettiği değerler ülkemizde yayılmaya devam edecek. Biz de bu yolculukta kadınlarımızın yanında olacağız. Sporun birleştirici gücünü, bir kez daha, bu toprakların kalkınması, sosyal gelişimi için kullanacağız” ifadelerini kullandı.",
>>>>>>> Stashed changes

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