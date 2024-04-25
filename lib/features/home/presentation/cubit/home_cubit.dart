import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/home/data/model/home_category_model.dart';
import 'package:app_flutter_produkt_bestellen/features/home/presentation/cubit/home_category_state.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeCategoryState> {
  HomeCubit() : super(const HomeCategoryState.loading());

  Future<void> load() async {
    if (state != const HomeCategoryState.loading()) {
      emit(const HomeCategoryState.loading());
    }

    Future.delayed(const Duration(milliseconds: 500));

    emit(HomeCategoryState.success(homeCategoryList: homeCategoryList));
  }
}

List<HomeCategoryModel> homeCategoryList = [
  HomeCategoryModel(
      title: 'Arbeitstische',
      imgPath: Assets.appComponents.jpg.arbeitstisch.path,
      navigation: AppGoRouter.arbeitstische.name,
      indexPositon: 0),
  HomeCategoryModel(
      title: 'Bürodrehstühle',
      imgPath: Assets.appComponents.jpg.buerodrehstuehle.path,
      navigation: AppGoRouter.buerostuehle.name,
      indexPositon: 1),
  HomeCategoryModel(
      title: 'Konferenzstühle',
      imgPath: Assets.appComponents.jpg.konferenzstuehle.path,
      navigation: AppGoRouter.konferenzstuehle.name,
      indexPositon: 2),
  /*ModelCategory(
        title: 'Konferenztische',
        navigation: AppGoRouter.konferenztische.name,
        imgPath: Assets.appComponents.jpg.konferenztische.path,
        indexPositon: 3),*/
];
