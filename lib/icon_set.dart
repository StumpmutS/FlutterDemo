import 'package:flutter/material.dart';

class IconSet {
  IconSet(this.icon, this.selectedIcon);

  final IconData icon;
  final IconData? selectedIcon;

  IconData getIcon([bool selected = false]) {
    if (!selected) return icon;
    return selectedIcon != null ? selectedIcon! : icon;
  }
}