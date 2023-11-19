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
                BlocSelector<
                        CubitWorkingTableProduct,
                        StateProduct<ArbeitsTischeProduct>,
                        List<ArbeitsTischeProduct>?>(
                    selector: (state) => state.maybeMap(
                        orElse: () => null,
                        success: (product) => product.workingTables),
                    builder: (context, workingTables) {
                      return Flexible(
                        child: Container(
                          height: currentConstraints.maxHeight * 0.5,
                          width: currentConstraints.maxWidth * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2),
                              color: AppColors.greyA7A7A7),
                          child: InkWell(
                            onTap: workingTables == null
                                ? () {}
                                : () async {
                                    final colors = workingTables
                                        .map((product) =>
                                            product.frameColors?.color)
                                        .toList();
                                    final color = await showColorMenu<Color?>(
                                        context,
                                        colors,
                                        Row(
                                          children: [
                                            ...colors.map((color) {
                                              debugPrint('map');
                                              return Flexible(
                                                child: Padding(
                                                  padding: color == colors.last
                                                      ? EdgeInsets.zero
                                                      : const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: ColorWidget(
                                                      color: color,
                                                      onTap: () =>
                                                          Navigator.of(context)
                                                              .pop(color)),
                                                ),
                                              );
                                            }).toList(),
                                          ],
                                        ),
                                        EdgeInsets.only(
                                            bottom: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.09),
                                        MediaQuery.sizeOf(context).height *
                                            0.11,
                                        MediaQuery.sizeOf(context).width *
                                            0.785);
                                    if (context.mounted) {
                                      if (color != null) {
                                        context
                                            .read<CubitWorkingTableProduct>()
                                            .changeColor(color);
                                      }
                                    }
                                  },
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
                BlocSelector<
                        CubitWorkingTableProduct,
                        StateProduct<ArbeitsTischeProduct>,
                        ArbeitsTischeProduct?>(
                    selector: (state) => state.maybeMap(
                        orElse: () => null,
                        success: (product) => product.selectedWorkingTable),
                    builder: (context, selectedWorkingTable) {
                      return Flexible(
                          child: Container(
                              height: currentConstraints.maxHeight * 0.8,
                              width: currentConstraints.maxWidth * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: selectedWorkingTable == null
                                    ? Border.all(color: Colors.black, width: 2)
                                    : null,
                              ),
                              child: selectedWorkingTable == null
                                  ? const LoadingWidget()
                                  : ColorWidget(
                                      color: selectedWorkingTable
                                          .frameColors?.color,
                                    )));
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
}
