import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "MARKAJ",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/about_sayfa.jpg", height: 250),
                        const SizedBox(height: 24),
                        const Text(
                          "Hızlı Haber",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Dünyanın dört bir yanından en güncel haberlere hızlı bir şekilde erişebilirsin",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/about_two.webp", height: 250),
                        const SizedBox(height: 24),
                        const Text(
                          "Anlık Bildirimler",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Önemli haberlerden ve gelişmelerden anında haberdar olun.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 300,
                          child: DotLottieLoader.fromAsset(
                            "assets/motions/search.lottie",
                            frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                              if (dotlottie != null) {
                                return Lottie.memory(dotlottie.animations.values.single);
                              } else {
                                return Container();
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "Arama Butonu",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Aradiginiza Hizlica Ulasin.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 400,
            left: 20,
            child: IconButton(
              icon: const Icon(CupertinoIcons.left_chevron, color: Colors.black),
              onPressed: () => _pageController.previousPage(
                duration: const Duration(milliseconds: 720),
                curve: Curves.easeInOut,
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            right: 20,
            child: IconButton(
              icon: const Icon(CupertinoIcons.right_chevron, color: Colors.black),
              onPressed: () => _pageController.nextPage(
                duration: const Duration(milliseconds: 720),
                curve: Curves.easeInOut,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: TextButton(
              onPressed: () {
                context.go('/home');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Atla",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(CupertinoIcons.arrow_right_to_line_alt, color: Colors.black),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}