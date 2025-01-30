import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          Column(
            children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 46,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10
                            ),
                            child: Text(
                              "Tümü",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 2,
                              width: 50,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: (){
                              context.go("/basketbolcategory");
                            },
                            child: Text(
                              "Basketbol",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              context.go('/futbolcategory');
                            },
                            child: Text(
                              "Futbol",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [

                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: (){
                              context.go("/voleybolcategory");
                            },
                            child: Text(
                              "Voleybol",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: (){
                              context.go("/teniscategory");
                            },
                            child: Text(
                              "Tenis",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )

              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.go("/news");
                    },
                    child: Container(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/image/home_img/h_img_1.webp",
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
                        "BOLU KARTALKAYA YANGINI ÖLÜ YARALI BİLGİSİ: Otel yangınında ölenlerin isimleri",
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
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
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
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
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
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
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
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
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
