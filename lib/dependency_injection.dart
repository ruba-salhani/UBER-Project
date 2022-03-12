import 'package:get_it/get_it.dart';
import 'package:uber_project/data/datasourses/remote/dio_helper.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => AppInterceptors());
  getIt.registerLazySingleton(() => DioHelper());
}
