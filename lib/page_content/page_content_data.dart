import 'package:dm_demo/page_content/device_data_content.dart';
import 'package:dm_demo/page_content/effects_content.dart';
import 'package:dm_demo/page_content/more_content.dart';
import 'package:flutter/material.dart';
import '../icon_set.dart';

List<Destination> pageContentData = [
  Destination(
      "Data",
      IconSet(Icons.data_thresholding_outlined, Icons.data_thresholding),
      DataContent()
  ),
  Destination(
      "Effects",
      IconSet(Icons.visibility_outlined, Icons.visibility),
      EffectsContent()
  ),
  Destination(
      "More",
      IconSet(Icons.more_outlined, Icons.more),
      MoreContent(),
  ),
];

class Destination {
  Destination(this.label, this.iconSet, this.content);

  final String label;
  final IconSet iconSet;
  final Widget content;
}
