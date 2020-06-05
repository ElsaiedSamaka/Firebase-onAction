import 'package:get_it/get_it.dart';

import 'core/services/apiServices.dart';
import 'core/view_models/CRUDmodel.dart';

GetIt locator = GetIt.I();

void setupLocator() {
  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton(() => CRUDModel());
}
