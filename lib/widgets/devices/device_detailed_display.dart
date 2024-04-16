import 'package:dm_demo/data_definitions/device.dart';
import 'package:dm_demo/widgets/devices/device_description.dart';
import 'package:flutter/material.dart';

class DeviceDetailedDisplay extends StatelessWidget {
  const DeviceDetailedDisplay({super.key, required this.device});

  final Device device;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${device.name}'), centerTitle: true,),
      body: Center(
        child:
        ListView(
          children: [
            device.regulationNumber.isEmpty ? Container() : DeviceDescription(descriptor: "Regulation Number", description: device.regulationNumber),
            device.definition.isEmpty ? Container() : DeviceDescription(descriptor: "Definition", description: device.definition),
            device.medicalSpecialty.isEmpty ? Container() : DeviceDescription(descriptor: "Medical Specialty", description: device.medicalSpecialty),
            device.medicalSpecialtyDescription.isEmpty ? Container() : DeviceDescription(descriptor: "Medical Specialty Description", description: device.medicalSpecialtyDescription),
          ],
        ),
      ),
    );
  }
}
