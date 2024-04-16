import 'package:dm_demo/data_definitions/device.dart';
import 'package:flutter/material.dart';

class DeviceDescription extends StatelessWidget {
  const DeviceDescription({super.key, required this.descriptor, required this.description});

  final String descriptor;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${descriptor}",
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Divider(),
          Text(
            "${description}",
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),

    );
  }
}
