import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(21, 23, 26, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child:
            IconButton(onPressed: (){
              context.go("/home");
            }, icon:const Icon(CupertinoIcons.home,color: Colors.white,)),
          ),
          Container(
            child:
            IconButton(onPressed: (){
              context.go("/search");
            }, icon:const Icon(CupertinoIcons.search,color: Colors.white)),
          ),

          Container(
            child:
            IconButton(onPressed: (){}, icon:const Icon(Icons.leaderboard_outlined,color: Colors.white)),
          ),
          Container(
            child:
            IconButton(onPressed: (){}, icon:const Icon(CupertinoIcons.person,color: Colors.white)),
          ),
        ],
      ),
    );
  }
}