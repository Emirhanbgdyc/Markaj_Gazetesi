
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.onError,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(146, 35, 42, 1),
                    Color.fromRGBO(110, 25, 30, 0.8),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("MARKAJ",style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),

                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Image.asset("assets/image/futbolcategory.jpg",width: 400,),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => context.go("/home"),
                  child: Container(
                    padding:EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    left: 12,
                    right: 12
                    ),
                    margin: EdgeInsets.only(
                      bottom: 10,
                      right: 8,
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    width: double.infinity,
                    child: Center(
                        child: Text("GET STARTED...",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
