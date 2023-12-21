import 'package:dio/dio.dart';
import 'package:engaz_task/core/apis/app/app_end_points.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: AppEndPoints.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;

  @POST(AppEndPoints.login)
  Future<String> login(@Body() Map<String, dynamic> loginBodyModel);

  @POST(AppEndPoints.getMarkers)
  Future<String> getMarkers(@Header('userToken') String userToken);
}
