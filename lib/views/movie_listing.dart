
import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketCount = 1;
  String _orderMessage = '';

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
      body: Container(
        child: Column(
          children: [
            const Text(
              'Street Fighter',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Estranged street fighters Ryu and Ken Masters get thrown '
              'back into combat when the mysterious Chun-Li recruits them '
              'for the next World Warrior Tournament -- a brutal clash of '
              'fists, fate and fury. However, behind the battle royale lies '
              'a deadly conspiracy that forces them to face off against each '
              'other and the demons from their past.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Text('Rating: PG-13'),
                Text('Duration: 1h 59m'),
              ],
            ),
            DropdownMenu<int>(
              initialSelection: 1,
              label: const Text('Number of tickets'),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
              onSelected: (int? value) {
                setState(() {
                  _ticketCount = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _orderMessage =
                      '$_ticketCount tickets added to order';
                });
              },
              child: const Text('Add to order'),
            ),
            Text(_orderMessage),
          ],
        ),
      ),
    );
  }
}
