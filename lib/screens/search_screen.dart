import 'package:flutter/material.dart';
import '../widgets/BottomMenu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});


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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Haber Spor Veya Takım Ara...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

             Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(
                     left: 25,
                   ),
                   width: 200,
                   height: 150,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(
                       image: AssetImage('assets/image/futbolcategory.jpg'),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Stack(
                     children: [
                       Positioned(
                         top: 110,
                         left:10,
                         child: Text("FUTBOL",style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(
                     left: 25,
                   ),
                   width: 200,  // Resmin genişliği
                   height: 150, // Resmin yüksekliği
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),  // Köşe yuvarlama
                     image: DecorationImage(
                       image: AssetImage('assets/image/basketbolcategory.jpg'),  // Resmin yolu
                       fit: BoxFit.cover,  // Resmin boyutunu kapsayacak şekilde yerleştirir
                     ),
                   ),
                   child: Stack(
                     children: [
                       Positioned(
                         top: 110,
                         left:10,
                         child: Text("BASKETBOL",style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        top: 10,
                      ),
                      width: 200,  // Resmin genişliği
                      height: 150, // Resmin yüksekliği
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),  // Köşe yuvarlama
                        image: DecorationImage(
                          image: AssetImage('assets/image/voleybolcategory.jpg'),  // Resmin yolu
                          fit: BoxFit.cover,  // Resmin boyutunu kapsayacak şekilde yerleştirir
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 110,
                            left:10,
                            child: Text("VOLEYBOL",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        top: 10,
                      ),
                      width: 200,  // Resmin genişliği
                      height: 150, // Resmin yüksekliği
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),  // Köşe yuvarlama
                        image: DecorationImage(
                          image: AssetImage('assets/image/teniscategory.jpg'),  // Resmin yolu
                          fit: BoxFit.cover,  // Resmin boyutunu kapsayacak şekilde yerleştirir
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 110,
                            left:10,
                            child: Text("TENIS",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        top: 10,
                      ),
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image/formulacategory.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 110,
                            left:10,
                            child: Text("FORMULA",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        top: 10,
                      ),
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image/naimcategory.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 110,
                            left:10,
                            child: Text("OLIMPIYAT",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),




              ],
            ),
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
                  child: Image.asset("assets/image/markajblack.jpg")
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: const Icon(Icons.newspaper, color: Color.fromRGBO(80, 82, 86, 1)),
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
      bottomNavigationBar: const BottomMenu(),
    );
  }
}

