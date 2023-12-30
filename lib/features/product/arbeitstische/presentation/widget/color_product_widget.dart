part of my_product_widget;

class ColorProductWidget extends HookWidget {
  const ColorProductWidget({super.key, required this.expandMenu});

  final ValueNotifier<({bool color, bool txb})> expandMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: AppColors.greyC1C1C1, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: AppColors.greyC1C1C1,
                borderRadius: BorderRadius.circular(20)),
            child: LayoutBuilder(builder: (context, currentConstraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      height: currentConstraints.maxHeight * 0.6,
                      width: currentConstraints.maxWidth * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                          color: AppColors.greyA7A7A7),
                      child: InkWell(
                        onTap: () => expandMenu.value = (
                          color: !expandMenu.value.color,
                          txb: expandMenu.value.txb
                        ),
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              'Gestellfarbe',
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
                                  ]),
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                  BlocSelector<CubitWorkingTableProduct,
                          StateProduct<StateArbeitsTischeProduct>, Color?>(
                      selector: (state) => state.maybeMap(
                            orElse: () => null,
                            success: (product) {
                              debugPrint(
                                  '===> ${product.selectedCharacteristics[TableChangeableCharacteristics.frameColors]}');
                              return product.selectedCharacteristics[
                                  TableChangeableCharacteristics.frameColors];
                            },
                          ),
                      builder: (context, color) {
                        return Flexible(
                            child: Container(
                                height: currentConstraints.maxHeight * 0.9,
                                width: currentConstraints.maxWidth * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: color == null
                                      ? Border.all(
                                          color: Colors.black, width: 2)
                                      : null,
                                ),
                                child: color == null
                                    ? const LoadingWidget()
                                    : ColorWidget(
                                        color: color,
                                      )));
                      })
                ],
              );
            }),
          ),
          if (expandMenu.value.color) ...[
            const SizedBox(
              height: 10,
            ),
            BlocSelector<CubitWorkingTableProduct,
                StateProduct<StateArbeitsTischeProduct>, List<Gestell>?>(
              selector: (state) => state.maybeMap(
                  orElse: () => null,
                  success: (product) => product.product?.frameColors),
              builder: (BuildContext context, List<Gestell>? state) =>
                  state != null
                      ? Row(
                          children: List.generate(
                            state.length,
                            (index) => Flexible(
                              child: Padding(
                                padding: index < state.length
                                    ? const EdgeInsets.only(left: 4.0)
                                    : EdgeInsets.zero,
                                child: ColorWidget(
                                  color: state[index].color,
                                  onTap: () {
                                    context
                                        .read<CubitWorkingTableProduct>()
                                        .changeColor(state[index].color);
                                    expandMenu.value = (
                                      color: false,
                                      txb: expandMenu.value.txb
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
            ),
            const SizedBox(
              height: 5,
            ),
          ]
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ValueNotifier<({bool color, bool txb})>>(
        'expandMenu', expandMenu));
  }
}
