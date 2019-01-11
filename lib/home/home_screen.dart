import 'package:flutter/material.dart';

class NavigationIconView {
  final Widget _icon;
  final Widget _activeIcon;
  final String _title;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, Widget icon, Widget activeIcon})
      : _title = title,
        _icon = icon,
        _activeIcon = activeIcon,
        item = BottomNavigationBarItem(
            icon: icon,
            activeIcon: activeIcon,
            title: Text(title),
            backgroundColor: Colors.white);
}

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationIconView> _navigationViews;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        icon: const Icon(Icons.ac_unit),
        title: '微信',
        activeIcon: const Icon(Icons.ac_unit),
      ),
      NavigationIconView(
        activeIcon: const Icon(Icons.ac_unit),
        icon: const Icon(Icons.ac_unit),
        title: '通讯录',
      ),
      NavigationIconView(
        activeIcon: const Icon(Icons.cloud),
        icon: const Icon(Icons.cloud_queue),
        title: '发现',
      ),
      NavigationIconView(
        activeIcon: const Icon(Icons.favorite),
        icon: const Icon(Icons.favorite_border),
        title: '我',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = BottomNavigationBar(
      items: _navigationViews
          .map<BottomNavigationBarItem>((NavigationIconView view) {
        return view.item;
      }).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print('object');
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.add), onPressed: () {})
        ],
      ),
      body: Container(),
      bottomNavigationBar: botNavBar,
    );
  }
}
