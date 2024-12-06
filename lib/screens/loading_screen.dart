import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
       // width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Container(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/image/markaj.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),


            // Yükleniyor yazısı
           // CircularProgressIndicator(),


            InkWell(
              onTap: () => context.go("/home"),
              child: SizedBox(
                width: 300,
                child: DotLottieLoader.fromAsset("assets/motions/loading.lottie",
                    frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(dotlottie.animations.values.single);
                      } else {
                        return Container();
                      }
                    }),
              ),
            ),

            //Birazcık boşluk lazım
            const SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}