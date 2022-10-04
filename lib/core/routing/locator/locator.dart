import 'package:get_it/get_it.dart';

import '../../repository/api_repository.dart';
import '../../view_model/home_screen/home_screen_view_model.dart';

final locator = GetIt.instance;
setLocator() {
  locator.registerLazySingleton(() => HomeScreenViewModel());
   locator.registerLazySingleton(() => APIRepository());
}