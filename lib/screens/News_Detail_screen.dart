import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

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
                      "MARKAJ GAZETESİ",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 16.0), // Boşluk ekleme
                  Center(
                    child: Image.asset(
                      "lib/assets/image/rodri.jpg", // Resim dosyasını ekleyin
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
                        Text("Real Madrid Başkanı Florentino Perez, Ballon d'Or ödülünü kazanan Rodri hakkında konuştu.",style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0), // Başlık ile haber arasında boşluk
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Ödülü Real Madridli bir oyuncunun alması gerektiğini söyleyen Perez, Rodri, Ballon d'Or'u Manchester City ile Şampiyonlar Ligi'ni kazandığı zaman almalıydı. Geçtiğimiz sezonun ödülünü kesinlikle bir Real Madrid oyuncusu kazanmalıydı.dedi",style:TextStyle(
                          fontSize: 19
                      ) ,)
                  ),
                  const Padding(
                    padding: EdgeInsets.all(17.5),
                    child: Text("NE OLMUŞTU? ",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left:17.5,

                    ),
                    child: Text("Real Madrid yönetimi, Ballon d'Or ödülünü kendi takımlarından bir oyuncunun kazanmadığını öğrendiklerinde ödül törenini protesto etmiş ve hiçbir ferdinin törene katılmayacağını açıklamıştı.",style: TextStyle(
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

      drawer: Drawer(
        backgroundColor:const Color.fromRGBO(21, 23, 26, 1),
        width: 250,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            Center(
              child: Container(
                child: const Text(
                  "MARKAJ",
                  style: TextStyle(
                    color: Color.fromRGBO(146, 35, 42, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.only(left: 10, right: 6),
                        child: IconButton(
                          onPressed: () {},
                          icon:const Icon(Icons.newspaper, size: 30,color: Color.fromRGBO(80, 82, 86, 1),),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "GÜNDEM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 6),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.sports_soccer, size: 30 ,color: Color.fromRGBO(80, 82, 86, 1),),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "FUTBOL",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 6),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.sports_basketball, size: 30,color: Color.fromRGBO(80, 82, 86, 1),),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "BASKETBOL",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 6),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.sports_volleyball, size: 30,color: Color.fromRGBO(80, 82, 86, 1),),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "VOLEYBOL",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 6),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.sports_tennis, size: 30,color: Color.fromRGBO(80, 82, 86, 1),),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "TENİS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          "Ayarlar & Destek",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(21, 23, 26, 1),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child:IconButton(onPressed: (){}, icon:const Icon(Icons.home,color: Colors.white,)),
            ),
            Container(
              child:IconButton(onPressed: (){}, icon:const Icon(Icons.search,color: Colors.white)),
            ),

            Container(
              child:IconButton(onPressed: (){}, icon:const Icon(Icons.notifications,color: Colors.white)),
            ),
            Container(
              child:IconButton(onPressed: (){}, icon:const Icon(Icons.person,color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}