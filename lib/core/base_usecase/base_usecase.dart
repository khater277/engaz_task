import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/errors/failures.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
