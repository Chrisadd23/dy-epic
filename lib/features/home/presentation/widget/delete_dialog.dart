import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog._({required this.categoryEntity});

  final CategoryEntity categoryEntity;

  static Future<dynamic> show({
    required BuildContext context,
    required CategoryEntity categoryEntity,
    required EnumCategoryProduct enumCategoryProduct,
  }) =>
      showDialog(
          context: context,
          builder: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: getIt<CubitCorePictures>()),
                  BlocProvider.value(
                    value: getIt<CubitCategory>(
                      instanceName: enumCategoryProduct.name,
                    ),
                  ),
                ],
                child: Dialog(
                  backgroundColor: Colors.transparent,
                  child: DeleteDialog._(categoryEntity: categoryEntity),
                ),
              ));

  @override
  Widget build(BuildContext context) {
    final entityCorePicture = context
        .read<CubitCorePictures>()
        .getSinglePicture(productNumber: categoryEntity.productNumber);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sind Sie sicher, dass Sie folgendes Produkt komplett löschen wollen?",
              style: AppTextStyle.bold18,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            if (entityCorePicture != null) ...[
              SizedBox(
                  height: 80,
                  child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Image.memory(
                          entityCorePicture.listIntForUint8List!))),
              const SizedBox(
                height: 20,
              ),
            ],
            Text(
              "Produktnummer:",
              style: AppTextStyle.bold18,
            ),
            Text(
              categoryEntity.productNumber,
              style: AppTextStyle.regular16,
            ),
            //--------------
            const SizedBox(
              height: 20,
            ),
            Text(
              "Marke:",
              style: AppTextStyle.bold18,
            ),
            Text(
              categoryEntity.type,
              style: AppTextStyle.regular16,
            ),
            //--------------
            const SizedBox(
              height: 20,
            ),
            Text(
              "Name:",
              style: AppTextStyle.bold18,
            ),
            Text(
              categoryEntity.productTitle,
              style: AppTextStyle.regular16,
            ),
            //--------------
            const SizedBox(
              height: 20,
            ),
            _DeleteButtonRow(categoryEntity: categoryEntity)
          ],
        ),
      ),
    );
  }
}

class _DeleteButtonRow extends StatelessWidget {
  const _DeleteButtonRow({
    required this.categoryEntity,
  });

  final CategoryEntity categoryEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => context.pop(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Abbrechen'.toUpperCase(),
                    style: AppTextStyle.bold14
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
                border: Border.all()),
            child: _DeleteButton(categoryEntity: categoryEntity),
          ),
        )
      ],
    );
  }
}

class _DeleteButton extends HookWidget {
  const _DeleteButton({
    required this.categoryEntity,
  });

  final CategoryEntity categoryEntity;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier isInProcess = useState<bool>(false);
    return InkWell(
      onTap: isInProcess.value
          ? () {}
          : () async {
              isInProcess.value = true;
              await context
                  .read<CubitCategory>()
                  .deleteProduct(productNumber: categoryEntity.productNumber);
              if (context.mounted) {
                isInProcess.value = false;
                context.pop();
              }
            },
      child: Center(
        child: FittedBox(
          child: isInProcess.value
              ? const LoadingWidget()
              : Text(
                  'Löschen'.toUpperCase(),
                  style: AppTextStyle.bold14.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
