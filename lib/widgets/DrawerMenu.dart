import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';

Drawer DrawerMenu(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.onError,
    width: 250,
    child: Column(
      children: [
        const SizedBox(height: 20),
        Center(
          child: Container(
            child: Theme.of(context).brightness == Brightness.dark
                ? Image.asset("assets/image/markajblack.jpg")
                : Image.asset("assets/image/markaj.jpg"),
          ),
        ),
        Expanded(
          child: ListView(
            children: [

              ExpansionTile(
                leading: Icon(Icons.sports_soccer,
                    color: Theme.of(context).colorScheme.onSecondary),
                title: Text(
                  'FUTBOL',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text("Süper Lig"),
                    onTap: () {
                      context.go("/t_super");
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.sports_basketball,
                    color: Theme.of(context).colorScheme.onSecondary),
                title: Text(
                  'BASKETBOL',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text("NBA"),
                    onTap: () {
                      context.go("/t_nba");
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.sports_volleyball,
                    color: Theme.of(context).colorScheme.onSecondary),
                title: Text(
                  'VOLEYBOL',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text("FIVB Dünya Ligi"),
                    onTap: () {
                      context.go("/t_ffivb");
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.sports_tennis,
                    color: Theme.of(context).colorScheme.onSecondary),
                title: Text(
                  'TENİS',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text("Wimbledon"),
                    onTap: () {
                      context.go("/t_wimb");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child:
                IconButton(
                  icon: Icon(CupertinoIcons.moon,),
                  onPressed: () {
                    context.read<ThemeProvider>().toggleTheme();
                  },
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}
