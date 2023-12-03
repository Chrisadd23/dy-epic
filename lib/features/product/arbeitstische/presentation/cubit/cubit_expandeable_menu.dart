import 'package:app_flutter_produkt_bestellen/features/product/arbeitstische/presentation/cubit/state_expandeable_menu.dart';
import 'package:bloc/bloc.dart';

class CubitExpandableMenu extends Cubit<StateExpandableMenu> {
  CubitExpandableMenu() : super(const StateExpandableMenu(expandeableMenu: {}));

  Future<void> initializeAndAddExpandableMenu(
      Map<String, bool> expandableMenu) async {
    emit(state.copyWith(expandeableMenu: expandableMenu));
  }

  Future<void> change({required String key, required bool value}) async {
    final newExpandableMenu = Map<String, bool>.from(state.expandeableMenu);

    newExpandableMenu[key] = value;

    emit(state.copyWith(expandeableMenu: newExpandableMenu));
  }

  Future<void> reset() async {
    final newExpandableMenu = Map<String, bool>.from(state.expandeableMenu);

    state.expandeableMenu.keys
        .map((key) => newExpandableMenu[key] = false)
        .toList();

    emit(state.copyWith(expandeableMenu: newExpandableMenu));
  }
}
