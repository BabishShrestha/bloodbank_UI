import 'package:bloodbank_nearby/bloodbanknearby/domain/entities/blood_bank.dart';
import 'package:bloodbank_nearby/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BloodbankRepository {
  Future<Either<Failure, BloodBank>> getBloodBankList();
}
