import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/local_neumorphic_button.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddProductInkWell extends StatelessWidget {
  const AddProductInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all()),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LocalNeumorphicButton(
              duration: const Duration(milliseconds: 10),
              color: Colors.white,
              borderRadius: 10,
              onPressedBasedOnDuration: () =>
                  context.goNamed(AppGoRouter.productAdding.name),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ),
          )),
    );
  }
}
