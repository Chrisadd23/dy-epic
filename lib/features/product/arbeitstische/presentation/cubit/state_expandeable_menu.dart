import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_expandeable_menu.freezed.dart';

@freezed
class StateExpandableMenu with _$StateExpandeableMenu {
  const factory StateExpandableMenu({
    required Map<String, bool> expandeableMenu,
  }) = _StateExpandeableMenu;
}
