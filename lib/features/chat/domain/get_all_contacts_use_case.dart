import 'package:app_flutter_produkt_bestellen/core/error/failure_state.dart';
import 'package:either_dart/either.dart';

import '../../login/domain/repository/login_repository.dart';
import 'entity/entity_contacts.dart';

class GetAllContactsUseCase {
  GetAllContactsUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<Either<Failure, List<EntityContact>>> call() =>
      _loginRepository.getAllContacts();
}
