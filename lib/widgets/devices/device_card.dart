import 'package:dm_demo/data_definitions/device.dart';
import 'package:dm_demo/widgets/devices/device_detailed_display.dart';
import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({super.key, required this.device});

  final Device device;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlutterLogo(size: 72.0),
        ),
        title: Text("${device.name}"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<Widget>(builder: (BuildContext context) {
              return DeviceDetailedDisplay(device: device);
            }),
          );
        },
      ),
    );
  }
}