import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/error/exceptions.dart';
import '../models/bloodbannk_model.dart';

abstract class BloodBankRemoteDataSource {
  Future<BloodBankModel>? getNearbyBloodBankData();
}

class BloodBankRemoteDataSourceImpl implements BloodBankRemoteDataSource {
  final http.Client client;

  BloodBankRemoteDataSourceImpl({required this.client});
  @override
  Future<BloodBankModel>? getNearbyBloodBankData() =>
      _getDataFromUrl('https://jsonplaceholder.typicode.com/users/');

  Future<BloodBankModel>? _getDataFromUrl(String url) async {
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return BloodBankModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
