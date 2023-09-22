import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/data/model/model_arbeitstische.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceArbeitstische {
  Future<Either<void, ModelArbeitstische>> getArbeitstischeData();
}

class DataSourceArbeitstischeImplementation extends DataSourceArbeitstische {
  @override
  Future<Either<void, ModelArbeitstische>> getArbeitstischeData() {
    // TODO: implement getArbeitstischeData
    throw UnimplementedError();
  }
}
