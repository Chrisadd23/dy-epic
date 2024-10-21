import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryImageContainer extends StatelessWidget {
  const CategoryImageContainer(
      {super.key,
      required this.productNumber,
      this.color,
      this.height = 150,
      this.fit = BoxFit.fill});

  final String productNumber;
  final String? color;
  final double height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final uInt8ListImage = context
        .read<CubitCorePictures>()
        .state
        .where((entityCorePicture) =>
            entityCorePicture.name.contains(productNumber))
        .firstOrNull
        ?.listIntForUint8List;
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: uInt8ListImage != null
            ? Image.memory(
                uInt8ListImage,
                fit: fit,
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
