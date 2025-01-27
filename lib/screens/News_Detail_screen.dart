import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import '../widgets/BottomMenu.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.close)),
          )
        ],
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
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  Center(
                    child: Image.asset(
                      "assets/image/rodri.jpg",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Haber Kaynağı: Star Spor",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Real Madrid Başkanı Florentino Perez, Ballon d'Or ödülünü kazanan Rodri hakkında konuştu",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Ödülü Real Madridli bir oyuncunun alması gerektiğini söyleyen Perez, Rodri, Ballon d'Or'u Manchester City ile Şampiyonlar Ligi'ni kazandığı zaman almalıydı. Geçtiğimiz sezonun ödülünü kesinlikle bir Real Madrid oyuncusu kazanmalıydı. dedi",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(17.5),
                    child: Text(
                      "NE OLMUŞTU? ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Real Madrid yönetimi, Ballon d'Or ödülünü kendi takımlarından bir oyuncunun kazanmadığını öğrendiklerinde ödül törenini protesto etmiş ve hiçbir ferdinin törene katılmayacağını açıklamıştı.",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Center(
                    heightFactor: 3,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.share, color: Colors.white),
                      label: const Text(
                        "Paylaş",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(21, 23, 26, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerMenu(context),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
