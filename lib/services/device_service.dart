import 'dart:convert';

import 'package:http/http.dart' as http;
import '../data_definitions/device.dart';

Future<List<Device>> getDevices({String nameQuery = ""}) async {
  var response = await fetchDevices(nameQuery: nameQuery);

  return parseDeviceResponse(response);
}

Future<http.Response> fetchDevices({String nameQuery = ""}) {
  return http.get(Uri.parse('https://api.fda.gov/device/classification.json?${nameQuery.isEmpty ? "" : "search=$nameQuery&"}limit=100'));
}

List<Device> parseDeviceResponse(http.Response response) {
  var results = (jsonDecode(response.body) as Map<String, dynamic>)['results'] as List<dynamic>;

  return results.map((e) => Device.fromJson(e as Map<String, dynamic>)).toList();
}