import 'package:dm_demo/page_content/page_content_data.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageContentData[screenIndex].label),
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int selectedDestination) {
          setState(() {
            screenIndex = selectedDestination;
          });
        },
        selectedIndex: screenIndex,
        destinations: pageContentData
            .map((d) => NavigationDestination(
                  label: d.label,
                  icon: Icon(d.iconSet.icon),
                  selectedIcon: Icon(d.iconSet.selectedIcon),
                ))
            .toList(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: pageContentData[screenIndex].content,
      ),
    );
  }
}
