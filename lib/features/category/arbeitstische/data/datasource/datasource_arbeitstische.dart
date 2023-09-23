import 'package:app_flutter_produkt_bestellen/core/error/failures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/domain/entity/entity_arbeitstische.dart';
import 'package:either_dart/either.dart';

abstract class DataSourceArbeitstische {
  Future<Either<Failure, List<EntityArbeitstische>>> getArbeitstischeData();
}

class DataSourceArbeitstischeImplementation extends DataSourceArbeitstische {
  @override
  Future<Either<Failure, List<EntityArbeitstische>>> getArbeitstischeData() {
    // TODO: implement getArbeitstischeData
    throw UnimplementedError();
  }
}
