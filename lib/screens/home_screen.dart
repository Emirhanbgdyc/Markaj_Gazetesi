
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/screens/News_Detail_screen.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_one.dart';
import 'package:markaj_gazetesi/screens/News_screens/News_detail_two.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "MARKAJ",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.black87,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage("assets/image/basketbolcategory.jpg"),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Gündem",
                             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.black87,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage("assets/image/basketbolcategory.jpg"),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Basketbol",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.black87,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage("assets/image/basketbolcategory.jpg"),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Futbol",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.black87,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage("assets/image/basketbolcategory.jpg"),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Voleybol",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16, left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.black87,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage("assets/image/basketbolcategory.jpg"),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Tenis",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                            height: 200,
                            width: double.infinity,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Peñarol, Haziran'da Fernando Muslera'yı ülkesine geri getiriyor.",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
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
                            height: 200,
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
          )


        ],
      ),

      drawer:DrawerMenu(context),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: const BottomMenu(),
    );
  }


}
