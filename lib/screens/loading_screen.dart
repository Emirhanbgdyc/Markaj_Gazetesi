
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../core/constants.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["white"],
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
                          TextStyle(
                            color: colors["white"],
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
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
                Container(
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
                    color: colors["blackColor"]
                  ),
                  width: double.infinity,
                  child: Center(
                      child: InkWell(
                        onTap: () => context.go("/home"),
                        child: Text("GET STARTED...",
                        style: TextStyle(
                          color: colors["white"],
                          fontWeight: FontWeight.bold,
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
