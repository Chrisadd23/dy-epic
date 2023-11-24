part of my_product_widget;

// =======> Product size Breite x Tiefe

class SizeProductWidget extends StatelessWidget {
  const SizeProductWidget({super.key, required this.scrollConstraints});

  final BoxConstraints scrollConstraints;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          width: scrollConstraints.maxWidth,
          height: scrollConstraints.maxHeight * 0.23,
          decoration: BoxDecoration(
              color: AppColors.greyC1C1C1,
              borderRadius: BorderRadius.circular(20)),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlocSelector<
                          CubitWorkingTableProduct,
                          StateProduct<ArbeitsTischeProduct>,
                          List<BreiteXTiefe>?>(
                      selector: (state) => state.maybeMap(
                          orElse: () => null,
                          success: (workingTable) =>
                              workingTable.product?.breiteXTiefe),
                      builder: (context, breiteXTiefe) {
                        return Flexible(
                          child: Container(
                            height: constraints.maxHeight * 0.5,
                            width: constraints.maxWidth * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2),
                                color: AppColors.greyA7A7A7),
                            child: InkWell(
                              onTap: breiteXTiefe == null
                                  ? () {}
                                  : () async {
                                      final choosenBreiteXTiefe =
                                          await showColorMenu<BreiteXTiefe>(
                                        context,
                                        breiteXTiefe,
                                        Row(
                                          children: [
                                            ...breiteXTiefe.map((breiteTiefe) {
                                              debugPrint('map');
                                              return Flexible(
                                                child: Padding(
                                                  padding: breiteTiefe ==
                                                          breiteXTiefe.last
                                                      ? EdgeInsets.zero
                                                      : const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: BreiteXTiefeWidget(
                                                      breiteXTiefe: breiteTiefe,
                                                      onTap: () => Navigator.of(
                                                              context)
                                                          .pop(breiteTiefe)),
                                                ),
                                              );
                                            }).toList(),
                                          ],
                                        ),
                                      );
                                      if (context.mounted) {
                                        if (choosenBreiteXTiefe != null) {
                                          context
                                              .read<CubitWorkingTableProduct>()
                                              .changeBreiteXTiefe(
                                                  choosenBreiteXTiefe);
                                        }
                                      }
                                    },
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    'Breite x Tiefe',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(1, 1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(-1, 1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(-1, -1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(1, -1)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                  BlocSelector<CubitWorkingTableProduct,
                      StateProduct<ArbeitsTischeProduct>, BreiteXTiefe?>(
                    selector: (state) => state.maybeMap(
                        orElse: () => null,
                        success: (product) => product.selectedCharacteristics[
                            TableChangeableCharacteristics.breiteXTiefe]),
                    builder: (context, breiteXTiefe) => Flexible(
                      child: Container(
                        height: constraints.maxHeight * 0.5,
                        width: constraints.maxWidth * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                            color: AppColors.greyA7A7A7),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: breiteXTiefe == null
                                ? const LoadingWidget()
                                : Text(
                                    '${breiteXTiefe.breite} x ${breiteXTiefe.tiefe}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(1, 1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(-1, 1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(-1, -1)),
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(1, -1)),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<BoxConstraints>(
        'scrollConstraints', scrollConstraints));
  }
}
