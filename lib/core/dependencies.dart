
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:go_router/go_router.dart';

import '../global_dependencies.dart';

void setUp() {
  getIt.registerFactory<GoRouter>(() => AppGoRouter.router);
}