import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_one.dart';
// import 'package:markaj_gazetesi/screens/News_screens/News_detail_three.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_two.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "MARKAJ",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewsDetailScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/image/futbolcategory.jpg",
                    fit: BoxFit.cover,
                    height: 400,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  width: 350,
                  child: Text(
                    "Fenerbahçe'nin ara transfer döneminde en büyük planı: Kevin De Bruyne.",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewsDetailOneScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('assets/image/newsgsone.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 190,
                        width: double.infinity,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "Peñarol, Haziran'da Fernando Muslera'yı ülkesine geri getiriyor.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewsDetailTwoScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('assets/image/futbolcategory.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 160,
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 250,
                      child: Text(
                        "Kanat rotasyonunu güçlendirmek isteyen Trabzonspor, Espanyol forması giyen Javi Puado ile ilgileniyor.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage("assets/image/rodri.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    "Florentino Perez'den Rodri ve Ballon d'Or açıklaması",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/image/rodri.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    "Florentino Perez'den Rodri ve Ballon d'Or açıklaması",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/image/rodri.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    "Florentino Perez'den Rodri ve Ballon d'Or açıklaması",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
              ),
            ],
          ),


        ],
      ),

      drawer:Drawer(
        backgroundColor: Theme.of(context).colorScheme.secondary,
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
                    leading: Icon(
                      Icons.newspaper,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    title: Text(
                      'GÜNDEM',
                      style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.sports_soccer,color: Theme.of(context).colorScheme.onSecondary,),
                    title:  Text(
                      'FUTBOL',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.sports_basketball, color: Theme.of(context).colorScheme.onSecondary,),
                    title:  Text(
                      'BASKETBOL',
                      style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading:  Icon(Icons.sports_volleyball, color:Theme.of(context).colorScheme.onSecondary,),
                    title:  Text(
                      'VOLEYBOL',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading:  Icon(Icons.sports_tennis, color: Theme.of(context).colorScheme.onSecondary),
                    title:  Text(
                      'TENİS',
                      style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
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
                        child:  Text(
                          "Ayarlar & Destek",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
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
