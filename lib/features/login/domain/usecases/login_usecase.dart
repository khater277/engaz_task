// Future<LoginResponseModel> login({required LoginBodyModel loginBodyModel});
import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/base_usecase/base_usecase.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/login/data/models/login_body_model/login_body_model.dart';
import 'package:engaz_task/features/login/data/models/login_response_model/login_response_model.dart';
import 'package:engaz_task/features/login/domain/repositories/login_repository.dart';

class LoginUsecase implements BaseUseCase<LoginResponseModel, LoginBodyModel> {
  final LoginRepository loginRepository;

  LoginUsecase({required this.loginRepository});
  @override
  Future<Either<Failure, LoginResponseModel>> call(
      LoginBodyModel loginBodyModel) {
    return loginRepository.login(loginBodyModel);
  }
}
