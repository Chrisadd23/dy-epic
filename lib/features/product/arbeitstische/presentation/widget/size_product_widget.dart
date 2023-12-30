part of my_product_widget;

class SizeProductWidget extends StatelessWidget {
  const SizeProductWidget({super.key, required this.expandMenu});

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
                          color: expandMenu.value.color,
                          txb: !expandMenu.value.txb
                        ),
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
                  ),
                  BlocSelector<
                          CubitWorkingTableProduct,
                          StateProduct<StateArbeitsTischeProduct>,
                          BreiteXTiefe?>(
                      selector: (state) => state.maybeMap(
                            orElse: () => null,
                            success: (product) {
                              debugPrint(
                                  '===> ${product.selectedCharacteristics[TableChangeableCharacteristics.breiteXTiefe]}');
                              return product.selectedCharacteristics[
                                  TableChangeableCharacteristics.breiteXTiefe];
                            },
                          ),
                      builder: (context, breiteXtiefe) {
                        return Flexible(
                            child: Container(
                                height: currentConstraints.maxHeight * 0.9,
                                width: currentConstraints.maxWidth * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: breiteXtiefe == null
                                      ? Border.all(
                                          color: Colors.black, width: 2)
                                      : null,
                                ),
                                child: breiteXtiefe == null
                                    ? const LoadingWidget()
                                    : BreiteXTiefeWidget(
                                        breiteXTiefe: breiteXtiefe,
                                      )));
                      })
                ],
              );
            }),
          ),
          if (expandMenu.value.txb) ...[
            const SizedBox(
              height: 10,
            ),
            BlocSelector<CubitWorkingTableProduct,
                StateProduct<StateArbeitsTischeProduct>, List<BreiteXTiefe>?>(
              selector: (state) => state.maybeMap(
                  orElse: () => null,
                  success: (product) => product.product?.breiteXTiefe),
              builder: (BuildContext context, List<BreiteXTiefe>? state) =>
                  state != null
                      ? Row(
                          children: List.generate(
                            state.length,
                            (index) => Flexible(
                              child: Padding(
                                padding: index < state.length
                                    ? const EdgeInsets.only(left: 4.0)
                                    : EdgeInsets.zero,
                                child: BreiteXTiefeWidget(
                                  breiteXTiefe: state[index],
                                  onTap: () {
                                    context
                                        .read<CubitWorkingTableProduct>()
                                        .changeBreiteXTiefe(state[index]);
                                    expandMenu.value = (
                                      color: expandMenu.value.color,
                                      txb: false
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
