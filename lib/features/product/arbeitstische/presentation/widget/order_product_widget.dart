part of my_product_widget;

class OrderProductWidget extends StatelessWidget {
  const OrderProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.03),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
              color: AppColors.greyD7D7D7),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyA7A7A7,
                    ),
                    child: const Center(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'bestellen',
                            style: TextStyle(
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
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyA7A7A7,
                    ),
                    child: const Center(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'anfragen',
                            style: TextStyle(
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
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
