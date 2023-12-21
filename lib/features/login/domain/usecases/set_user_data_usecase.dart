import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/base_usecase/base_usecase.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:engaz_task/features/login/domain/repositories/login_repository.dart';

class SetUserDataUsecase implements BaseUseCase<void, UserRealtimeModel> {
  final LoginRepository loginRepository;

  SetUserDataUsecase({required this.loginRepository});

  @override
  Future<Either<Failure, void>> call(UserRealtimeModel userRealtimeModel) {
    return loginRepository.setUserData(userRealtimeModel);
  }
}
