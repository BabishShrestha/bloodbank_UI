import 'package:bloodbank_nearby/bloodbanknearby/domain/entities/blood_bank.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';
import '../repositories/blood_bank_repository.dart';

class GetBloodBankList implements UseCase<BloodBank, NoParams> {
  final BloodbankRepository repository;

  GetBloodBankList(this.repository);

  @override
  Future<Either<Failure, BloodBank>> call(NoParams params) async {
    return await repository.getBloodBankList();
  }
}
