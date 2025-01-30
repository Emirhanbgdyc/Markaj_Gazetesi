import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';


class voleybolcategory extends StatelessWidget {
  const voleybolcategory({super.key});

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
                            context.go("/v_two");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_2.webp'),
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
                            "Tuğba Şenoğlu İvegin'den flaş transfer kararı!",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 16,
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
                           context.go("/v_three");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_3.webp'),
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
                            "Sultanlar Ligi'nde dengeleri değiştirecek transfer! Hande Baladın, Fenerbahçe'ye mi?",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                       context.go("/v_four");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_4.webp'),
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
                              "Saliha Şahin Beşiktaş'tan ayrılıyor! İşte yeni takımı.",
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
                      context.go("/v_five");
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_5.webp'),
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
                              "Paola Egonu'dan VakıfBank itirafı! 'Bugün bile beni öfkelendiren iki olay var'",
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
                           context.go("/v_six");
                          },
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage('assets/image/voleybol_img/v_img_6.webp'),
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
                            "Şampiyonlar Ligi'nde final gibi eşleşme! Fenerbahçe Medicana ve Vakıfbank kozlarını paylaşacak",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
                              fontSize: 16,
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
