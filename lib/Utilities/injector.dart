import 'package:get_it/get_it.dart';
import 'package:poc_di/controllers/funds_controller.dart';
import 'package:poc_di/repositories/fund_repo.dart';
import 'package:poc_di/services/dio_helper.dart';
import 'package:poc_di/services/rest_client.dart';

GetIt getIt = GetIt.I;

initialiseGetIt() async {

  getIt.registerLazySingleton<RestClient>(() => DioHelper().getDioClient());

  getIt.registerLazySingleton<FundsRepository>(() => FundsRepositoryImpl(getIt.get<RestClient>()));
  getIt.registerLazySingleton<FundsController>(() => FundsController());

}