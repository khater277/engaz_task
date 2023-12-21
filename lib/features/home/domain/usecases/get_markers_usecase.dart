// Future<Either<Failure, MarkersResponseModel>> getMarkers(
//       {required String userToken});

import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/base_usecase/base_usecase.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/markers_response_model.dart';
import 'package:engaz_task/features/home/domain/repositories/home_repository.dart';

class GetMarkersUsecase implements BaseUseCase<MarkersResponseModel, String> {
  final HomeRepository homeRepository;

  GetMarkersUsecase({required this.homeRepository});
  @override
  Future<Either<Failure, MarkersResponseModel>> call(String userToken) {
    return homeRepository.getMarkers(userToken: userToken);
  }
}
