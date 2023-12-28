import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:bloc/bloc.dart';

class CubitChooseOfficeChair extends Cubit<EnumSelectOfficeChairCategory> {
  CubitChooseOfficeChair([EnumSelectOfficeChairCategory? initialEnum])
      : super(initialEnum ?? EnumSelectOfficeChairCategory.normal);

  void change(EnumSelectOfficeChairCategory enumSelectOfficeChairCategory) {
    emit(enumSelectOfficeChairCategory);
  }
}
