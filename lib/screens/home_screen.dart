import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                        "assets/image/home_img/bolu_takımlar.webp",
                        fit: BoxFit.cover,
                        height: 400,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      width: 350,
                      child: Text(
                        "Spor kulüplerinden Bolu'da yaşanan yangın faciası sonrası mesajlar",
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
                        context.go("/home_one");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_1.webp'),
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
                              "VakıfBank'tan transfer hamlesi!",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 16,
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
                            context.go("/home_two");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_3.webp'),
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
                            right: 20,
                          ),
                          width: 250,
                          child: Text(
                            "Avustralya Açık'ta Iga Swiatek hata yapmadı",
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
                    child: GestureDetector(
                      onTap: () {
                        context.go("/home_three");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/futbol_img/f_img_5.webp'),
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
                              "Fenerbahçe, Anderson Talisca'yı İstanbul'a getirdi! Taraftardan coşkulu karşılama.",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 16,
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
                          onTap: (){
                            context.go("/home_four");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/basketbol_img/b_img_6.jpg'),
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
                            "Shai Gilgeous-Alexander'in üstün performansı Thunder'a galibiyeti getirdi.",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 16
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
