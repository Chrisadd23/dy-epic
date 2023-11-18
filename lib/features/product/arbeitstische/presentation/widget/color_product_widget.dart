part of my_product_widget;

class ColorProductWidget extends StatelessWidget {
  const ColorProductWidget({
    required this.scrollConstraints,
    super.key,
  });

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
          child: LayoutBuilder(builder: (context, currentConstraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlocBuilder<CubitWorkingTableProduct, StateWorkingTable>(
                    builder: (context, state) {
                  return Flexible(
                    child: Container(
                      height: currentConstraints.maxHeight * 0.5,
                      width: currentConstraints.maxWidth * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                          color: AppColors.greyA7A7A7),
                      child: InkWell(
                        onTap: state.maybeMap(
                          orElse: () => () {},
                          success: (product) => () async {
                            debugPrint('start');
                            final colors = product.workingTables
                                ?.map((product) => product.frameColors?.color)
                                .toList();
                            debugPrint('wait => $colors');
                            if (colors != null) {
                              final color =
                                  await _showColorMenu(context, colors);
                              debugPrint('chosen color $color');
                              if (context.mounted) {
                                debugPrint('continue');
                                debugPrint('chosen color $color');
                                if (color != null) {
                                  context
                                      .read<CubitWorkingTableProduct>()
                                      .changeColor(color);
                                }
                              }
                            }
                          },
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
                  );
                }),
                BlocBuilder<CubitWorkingTableProduct, StateWorkingTable>(
                    builder: (context, state) {
                  return Flexible(
                      child: Container(
                    height: currentConstraints.maxHeight * 0.8,
                    width: currentConstraints.maxWidth * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: state.maybeMap(
                          orElse: () =>
                              Border.all(color: Colors.black, width: 2),
                          success: (product) => null,
                        )),
                    child: state.maybeMap(
                        orElse: () => const LoadingWidget(),
                        success: (product) => ColorWidget(
                              color: product
                                  .selectedWorkingTable?.frameColors?.color,
                            )),
                  ));
                }),
              ],
            );
          }),
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

  Future<Color?> _showColorMenu(BuildContext context, List<Color?>? colors) {
    return showDialog<Color>(
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          debugPrint('builder');
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.11,
                width: MediaQuery.sizeOf(context).width * 0.785,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent),
                child: Row(children: [
                  ...colors!.map((color) {
                    debugPrint('map');
                    return Flexible(
                      child: Padding(
                        padding: color == colors.last
                            ? EdgeInsets.zero
                            : const EdgeInsets.only(right: 8.0),
                        child: ColorWidget(
                            color: color,
                            onTap: () => Navigator.of(context).pop(color)),
                      ),
                    );
                  }).toList(),
                ]),
              ),
            ),
          );
        });
  }
}
