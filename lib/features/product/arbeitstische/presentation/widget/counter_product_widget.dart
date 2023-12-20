part of my_product_widget;

class CounterProductWidget extends HookWidget {
  const CounterProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
          color: AppColors.greyD7D7D7,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.greyA7A7A7,
                    image: DecorationImage(
                      image:
                          AssetImage(Assets.appComponents.png.vectorMinus.path),
                    ),
                  ),
                ),
                onTapDown: (details) {
                  context.read<CubitWorkingTableProduct>().decrement();
                },
                onTapUp: (details) =>
                    context.read<CubitWorkingTableProduct>().stopCounting(),
                onTapCancel: () =>
                    context.read<CubitWorkingTableProduct>().stopCounting(),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(87, 87, 87, 0.4),
                    image: DecorationImage(
                      image:
                          AssetImage(Assets.appComponents.png.vectorPlus.path),
                    ),
                  ),
                ),
                onTapDown: (details) {
                  context.read<CubitWorkingTableProduct>().increment();
                },
                onTapUp: (details) =>
                    context.read<CubitWorkingTableProduct>().stopCounting(),
                onTapCancel: () =>
                    context.read<CubitWorkingTableProduct>().stopCounting(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(87, 87, 87, 0.4),
                ),
                child: Center(
                    child: BlocSelector<CubitWorkingTableProduct, StateProduct,
                            int?>(
                        selector: (state) => state.maybeMap(
                            orElse: () => null,
                            success: (product) => product.productOrderCount),
                        builder: (context, productCount) {
                          return productCount == null
                              ? const LoadingWidget()
                              : FittedBox(
                                  fit: BoxFit.fill,
                                  child: Text(
                                    productCount.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(1, 1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1, 1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(-1, -1)),
                                          Shadow(
                                              color: Colors.white,
                                              offset: Offset(1, -1)),
                                        ]),
                                  ),
                                );
                        })),
              ),
            ]));
  }
}
