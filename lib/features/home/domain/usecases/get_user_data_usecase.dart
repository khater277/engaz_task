// Future<Either<Failure, Stream<DatabaseEvent>>> getUserData();

import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/base_usecase/base_usecase.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/domain/repositories/home_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class NoParams {}

class GetUserDataUsecase
    implements BaseUseCase<Stream<DatabaseEvent>, NoParams> {
  final HomeRepository homeRepository;

  GetUserDataUsecase({required this.homeRepository});

  @override
  Future<Either<Failure, Stream<DatabaseEvent>>> call(NoParams params) {
    return homeRepository.getUserData();
  }
}
