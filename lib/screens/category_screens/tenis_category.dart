import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';


class TennisCategoryScreen extends StatelessWidget {
  const TennisCategoryScreen({super.key});

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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            SizedBox(width: 12),
                            GestureDetector(
                              onTap: (){
                                context.go('/home');
                              },
                              child: Text(
                                "Tümü",
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            )
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
                              onTap: (){
                                context.go("/futbolcategory");
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5,
                                  left: 10
                              ),
                              child: Text(
                                "Tenis",
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 2,
                                width:50,
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )

              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/t_details");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_1.webp'),
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
                              "Avustralya Açık'ta Jannik Sinner şampiyon oldu",
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
                            context.go("/t_two");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_2.webp'),
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
                            "Ahmet Kaplan Avustralya Açık’ta yarı finalde",
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
                           context.go("/t_three");
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                       context.go("/t_four");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_4.webp'),
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
                              "Sabalenka, Avustralya Açık'ta yarı finalde.",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                       context.go("/t_five");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_5.webp'),
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
                              "Avustralya Açık'ta Jannik Sinner çeyrek finale yükseldi.",
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
                           context.go("/t_six");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/tenis_img/t_img_6.webp'),
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
                            "Zverev ve Gauff üçüncü turda.",
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
