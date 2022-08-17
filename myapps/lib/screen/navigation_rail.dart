import 'package:flutter/material.dart';

class NavigationRails extends StatefulWidget {
  const NavigationRails({Key? key}) : super(key: key);

  @override
  State<NavigationRails> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationRails> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.blue,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.wifi_outlined),
                selectedIcon: Icon(Icons.wifi),
                label: Text('Wifi'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.wb_sunny_outlined),
                selectedIcon: Icon(Icons.wb_sunny),
                label: Text('Sunny'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('Favorite'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Star'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.filter_alt_outlined),
                selectedIcon: Icon(Icons.filter),
                label: Text('Filter'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search_outlined),
                selectedIcon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.album_outlined),
                selectedIcon: Icon(Icons.album),
                label: Text('Album'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.wb_sunny_outlined),
                selectedIcon: Icon(Icons.wb_sunny),
                label: Text('Sunny'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: Text('Setting'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 2, width: 2),
          Expanded(
            child: Center(
              child: Text('selectedIndex: $_selectedIndex'),
            ),
          ),
        ],
      ),
    );
  }
}
