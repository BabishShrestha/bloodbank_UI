import 'package:bloodbank_nearby/bloodbanknearby/data/data_sources/blood_bank_remote_data_source.dart';
import 'package:bloodbank_nearby/bloodbanknearby/domain/entities/blood_bank.dart';
import 'package:bloodbank_nearby/bloodbanknearby/domain/repositories/blood_bank_repository.dart';
import 'package:bloodbank_nearby/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';

class BloodBankRepositoryImpl extends BloodbankRepository {
  final BloodBankRemoteDataSource remoteDataSource;

  BloodBankRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, BloodBank>> getBloodBankList() async {
    return await _getList();
  }

  Future<Either<Failure, BloodBank>> _getList() async {
    try {
      final remoteList = await remoteDataSource.getNearbyBloodBankData();
      return Right(remoteList!);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
