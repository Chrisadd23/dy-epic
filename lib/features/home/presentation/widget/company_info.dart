import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/presentation/cubit/cubit_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _ProductContainer(),
          SizedBox(
            width: 20,
          ),
          _OfferContainer(),
        ],
      ),
    );
  }
}

class _ProductContainer extends StatelessWidget {
  const _ProductContainer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCorePictures, List<EntityCorePictures>>(
        builder: (context, state) {
      return Container(
        height: 150,
        width: MediaQuery.sizeOf(context).width - 60,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(Assets.appComponents.jpg.konferenzstuehle.path),
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text.rich(
              TextSpan(text: '-10 % ', children: [
                TextSpan(
                  text: 'bei der Ausstattung\nvon Neubauten',
                  style:
                      AppTextStyle.bold18.copyWith(fontWeight: FontWeight.bold),
                ),
              ]),
              style: AppTextStyle.colorBlackBorder30
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });
  }
}

class _OfferContainer extends StatelessWidget {
  const _OfferContainer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCorePictures, List<EntityCorePictures>>(
        builder: (context, state) {
      return Container(
        height: 150,
        width: MediaQuery.sizeOf(context).width - 60,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(Assets.appComponents.jpg.buerodrehstuehle.path),
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text.rich(
              TextSpan(text: '-15 % ', children: [
                TextSpan(
                  text: 'Bei der ersten Bestellung',
                  style:
                      AppTextStyle.bold18.copyWith(fontWeight: FontWeight.bold),
                ),
              ]),
              style: AppTextStyle.colorBlackBorder30
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });
  }
}
