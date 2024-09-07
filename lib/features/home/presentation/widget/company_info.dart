import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _Offer(
              text: Text.rich(
                TextSpan(text: '-10 % ', children: [
                  TextSpan(
                    text: 'bei der Ausstattung\nvon Neubauten',
                    style: AppTextStyle.bold18
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ]),
                style: AppTextStyle.colorBlackBorder30
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              imagePath: Assets.appComponents.officeWithCityWhite.path),
          const SizedBox(
            width: 20,
          ),
          _Offer(
              text: Text.rich(
                TextSpan(text: '-15 % ', children: [
                  TextSpan(
                    text: 'Bei der ersten Bestellung',
                    style: AppTextStyle.bold18
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ]),
                style: AppTextStyle.colorBlackBorder30
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              imagePath: Assets.appComponents.officeWithForestDark.path)
        ],
      ),
    );
  }
}

class _Offer extends StatelessWidget {
  const _Offer({required this.text, required this.imagePath});

  final Text text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.sizeOf(context).width - 60,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: text,
        ),
      ),
    );
  }
}
