import 'package:dm_demo/services/device_service.dart';
import 'package:dm_demo/widgets/devices/device_card.dart';
import 'package:dm_demo/widgets/general/loading.dart';
import 'package:flutter/material.dart';
import '../data_definitions/device.dart';

class DataContent extends StatefulWidget {
  const DataContent({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DataContentState();
  }
}

class _DataContentState extends State<DataContent> {
  String query = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Device>>(
      future: getDevices(nameQuery: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return buildData(snapshot.data!);
        }

        if (snapshot.hasError) {
          return ErrorWidget(snapshot.error!);
        }

        return Loading();
      },
    );
  }

  Widget buildData(List<Device> devices) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Search By Device Name",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: devices.map((d) => DeviceCard(device: d)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
