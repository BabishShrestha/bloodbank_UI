import 'package:bloodbank_nearby/bloodbanknearby/domain/entities/blood_bank.dart';

class BloodBankModel extends BloodBank {
  BloodBankModel(
      {required String? name,
      required String? location,
      required int? phone,
      String? blood_group,
      String? image})
      : super(
            name: name,
            location: location,
            phone: phone,
            blood_group: blood_group,
            image: image);

  factory BloodBankModel.fromJson(Map<String, dynamic> json) {
    return BloodBankModel(
      name: json['name'],
      location: json['address']['street'],
      phone: (json['phone'] as num).toInt(),
    );
  }
}
