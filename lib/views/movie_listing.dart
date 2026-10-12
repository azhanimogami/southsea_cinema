import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container (
        child: Column(
          children: const [
            Text('Street Fighter',
            style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,)),
            Text('Estranged street fighters Ryu and Ken Masters get thrown back into combat when the mysterious Chun-Li recruits them for the next World Warrior Tournament -- a brutal clash of fists, fate and fury. However, behind the battle royale lies a deadly conspiracy that forces them to face off against each other and the demons from their past.')
          ,Row(
          children: [
            Text('Rating: PG-13'),
            Text('Duration: 1h 59m'),
          ], )
          ], ),
             ),
    );
  }
}
