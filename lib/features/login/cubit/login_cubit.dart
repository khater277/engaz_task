import 'package:bloc/bloc.dart';
import 'package:engaz_task/features/login/data/models/login_body_model/login_body_model.dart';
import 'package:engaz_task/features/login/data/models/login_response_model/login_response_model.dart';
import 'package:engaz_task/features/login/domain/usecases/login_usecase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUsecase _loginUsecase;
  LoginCubit({required LoginUsecase loginUsecase})
      : _loginUsecase = loginUsecase,
        super(const LoginState.initial());

  void login({
    required String phoneNumber,
    required String password,
  }) async {
    emit(const LoginState.loginLoading());
    LoginBodyModel loginBodyModel = LoginBodyModel(
      phoneNumber: phoneNumber,
      password: password,
      firebaseToken: await FirebaseMessaging.instance.getToken(),
    );
    final response = await _loginUsecase.call(loginBodyModel);
    response.fold(
      (failure) => emit(LoginState.loginError(failure.getMessage())),
      (loginResponseModel) => emit(LoginState.loginSuccess(loginResponseModel)),
    );
  }
}
