import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:payment/data/repository/repository.dart';
import 'package:payment/presentation/cubit/payment_cubit.dart';

import '../data/web_services/dio_helper.dart';

var instance = GetIt.instance;

Future<void> init() async {
  // bloc
  instance.registerFactory(() => PaymentCubit(repositoryPayment: instance()));

  // features
  instance.registerLazySingleton(() => DioHelper(dio: Dio()));
  instance
      .registerLazySingleton(() => RepositoryPayment(dioHelper: instance()));

  // external
  instance.registerLazySingleton<Dio>(() => Dio());
}
