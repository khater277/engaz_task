import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/base_usecase/base_usecase.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/domain/repositories/home_repository.dart';

class UpdateUserDataUsecase implements BaseUseCase<void, Map<String, dynamic>> {
  final HomeRepository homeRepository;

  UpdateUserDataUsecase({required this.homeRepository});

  @override
  Future<Either<Failure, void>> call(Map<String, dynamic> updatedData) {
    return homeRepository.updateUserData(updatedData: updatedData);
  }
}
