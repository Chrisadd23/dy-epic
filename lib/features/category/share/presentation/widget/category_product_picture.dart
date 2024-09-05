import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryImageContainer extends StatelessWidget {
  const CategoryImageContainer({
    super.key,
    required this.productNumber,
    this.color,
    this.height = 150,
  });

  final String productNumber;
  final String? color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCorePictures, List<EntityCorePictures>>(
        builder: (context, state) {
      return Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: state
                      .where((entityCorePicture) => entityCorePicture.name
                          .contains(
                              '$productNumber${color == null ? '' : '_$color'}'))
                      .firstOrNull
                      ?.listIntForUint8List !=
                  null
              ? Image.memory(
                  Uint8List.fromList(state
                      .where((entityCorePicture) => entityCorePicture.name
                          .contains(
                              '$productNumber${color == null ? '' : '_$color'}'))
                      .first
                      .listIntForUint8List),
                  fit: BoxFit.fill,
                )
              : const SizedBox.shrink(),
        ),
      );
    });
  }
}
