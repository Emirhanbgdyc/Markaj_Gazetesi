import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/BottomMenu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 236, 237, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text("MARKAJ",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Color.fromRGBO(146, 35, 42, 1)
          ),
        ),
        centerTitle: true,
      ),



      drawer:Drawer(
        backgroundColor: const Color.fromRGBO(21, 23, 26, 1),
        width: 250,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child: const Text(
                  "MARKAJ",
                  style: TextStyle(
                    color: Color.fromRGBO(146, 35, 42, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: const Icon(CupertinoIcons.news, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'GÜNDEM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_soccer,color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'FUTBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_basketball, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'BASKETBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_volleyball, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'VOLEYBOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.sports_tennis, color: Color.fromRGBO(80, 82, 86, 1)),
                    title: const Text(
                      'TENİS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          "Ayarlar & Destek",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: BottomMenu(),
    );

  }
}
