import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';

class ffivb extends StatelessWidget {
  const ffivb ({super.key});

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
                                "Voleybol",
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
                                width: 70,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/v_details");
                      },
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/voleybol_img/v_img_1.webp'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: 300,
                              width: 370,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "VakıfBank'tan transfer hamlesi!",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 18,
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
                        context.go("/v_two");
                      },
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/voleybol_img/v_img_2.webp'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: 300,
                              width: 370,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Tuğba Şenoğlu İvegin'den flaş transfer kararı!",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 18,
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
                        context.go("/v_three");
                      },
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/voleybol_img/v_img_3.webp'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: 300,
                              width: 370,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "Sultanlar Ligi'nde dengeleri değiştirecek transfer! Hande Baladın, Fenerbahçe'ye mi?.",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 18,
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