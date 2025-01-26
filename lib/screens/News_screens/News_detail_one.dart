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
                      "assets/image/newsone.webp", // Resim dosyasını ekleyin
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
                        Text("Beşiktaş'ta stoper krizi baslik",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0), // Başlık ile haber arasında boşluk
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Son 7 maçında sadece 1 galibiyet alabilen Beşiktaş, yarın Dolmabahçe'de Fenerbahçe ile oynayacağı derbiyi kazanıp hem moral bulmak hem de camiadaki kara bulutları bir nebze olsun dağıtmak istiyor.Ancak takımdaki eksikler zorlu karşılaşma öncesi can sıkıyor. Daha önce Necip Uysal'ın çapraz bağ sakatlığı sonrası sezonu kapatmasıyla eksilen savunma hattı, tendonundan operasyonu geçiren Gabriel Paulista'nın 3 ay sahalardan uzak kalacak olması büyük bir probleme dönüştü. Bunların üzerine Felix Uduokhai'nin sakatlığının gelmesi keyifleri iyice kaçırdı.Sabah'ın haberine göre geçen haftaki Hatayspor maçına Tayip Talha Sanuç ve Emirhan Topçu ikilisiyle çıkan siyah-beyazlılarda gözler Uduokhai'ye çevrildi.Dün idmana çıkmayan Nijerya asıllı Alman futbolcunun, bugün de antrenmana katılmaması durumunda derbide oynaması mümkün gözükmüyor. Teknik heyet, hafta boyunca yapılan idmanlarda Tayyip Talha ve Emirhan'la özel olarak ilgilendi.",style:TextStyle(
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
      bottomNavigationBar:BottomMenu(),

    );
  }
}