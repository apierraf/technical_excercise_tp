import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/core/constants/app_constants.dart';
part 'dio_config.g.dart';

// This file is responsible for configuring the Dio client.
// The Dio client is used to make HTTP requests to the API.

@Riverpod(keepAlive: true)
Dio dioConfig(DioConfigRef ref) {
  var dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      queryParameters: {
        'api_key': apiKey,
      },
    ),
  );
  return dio;
}
