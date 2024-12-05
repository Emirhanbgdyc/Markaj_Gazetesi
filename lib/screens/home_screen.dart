import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 236, 237, 1),
      appBar: AppBar(
      backgroundColor: Colors.white,
        title:const Text("MARKAJ",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Color.fromRGBO(146, 35, 42, 1)
          ),
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsDetailScreen(),));
                          },
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    child: Image.asset("assets/image/rodri.jpg")
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 10,
                                  top: 5,
                                ),
                                child: Text("Florentino Perez'den Rodri ve Ballon d'Or açıklaması",
                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: Container(
                       height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/image/Samanyolu.webp"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 5,
                              ),
                              child: Text("Mbappe hakkında olay sözler! 'Sıradan bir oyuncu'",
                                style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ) ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(

                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/image/mars-uydu.jpg"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 5,
                              ),
                              child: Text("İşte Mars Uydularının Nasıl Oluştuğuna Dair Yeni Teori",
                                style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ) ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/image/manzara.webp"),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 10,
                                top: 5,
                              ),
                              child: Text("2011 Depreminde Hasar Gören Fukuşima Nükleer Santralinde Biriken Suyun Ne Olacağı Sorunsalı",
                                style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ) ,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),


      drawer:Drawer(
        backgroundColor: const Color.fromRGBO(21, 23, 26, 1),
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
                  ListTile(
                    leading: const Icon(CupertinoIcons.news, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'GÜNDEM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_soccer,color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'FUTBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_basketball, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'BASKETBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_volleyball, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'VOLEYBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_tennis, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'TENİS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
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


      bottomNavigationBar: BottomMenu(),
    );
  }
}
