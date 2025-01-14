import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Drawer DrawerMenu(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.secondary,
    width: 250,
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
              child: Image.asset("assets/image/markajblack.jpg")
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(
                  Icons.newspaper,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                title: Text(
                  'GÜNDEM',
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.sports_soccer,color: Theme.of(context).colorScheme.onSecondary,),
                title:  Text(
                  'FUTBOL',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading: Icon(Icons.sports_basketball, color: Theme.of(context).colorScheme.onSecondary,),
                title:  Text(
                  'BASKETBOL',
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading:  Icon(Icons.sports_volleyball, color:Theme.of(context).colorScheme.onSecondary,),
                title:  Text(
                  'VOLEYBOL',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              ListTile(
                leading:  Icon(Icons.sports_tennis, color: Theme.of(context).colorScheme.onSecondary),
                title:  Text(
                  'TENİS',
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
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
                    child:  Text(
                      "Ayarlar & Destek",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
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
  );
}