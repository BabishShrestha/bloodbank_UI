import 'package:equatable/equatable.dart';

class BloodBank extends Equatable {
  final String? name;
  final String? location;
  final int? phone;
  final String? blood_group;
  final String? image;

  BloodBank(
      {required this.name,
      required this.location,
      required this.phone,
      required this.blood_group,
      required this.image});

  @override
  // TODO: implement props
  List<Object?> get props => [name, location, phone, blood_group, image];
}
