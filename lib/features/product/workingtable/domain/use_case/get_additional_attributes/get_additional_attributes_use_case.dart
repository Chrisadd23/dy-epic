import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/share/domain/entity/entity_product.dart';
import 'package:app_flutter_produkt_bestellen/features/product/workingtable/domain/repository/repostiory_workingtable.dart';
import 'package:either_dart/either.dart';

class GetAdditionalAttributesUseCase {
  final RepositoryWorkingTable _repositoryWorkingTable;

  GetAdditionalAttributesUseCase(this._repositoryWorkingTable);

  Future<Either<Failure, List<AdditionalAttributes>>> call() =>
      _repositoryWorkingTable.getAdditionalAttributes();
}
