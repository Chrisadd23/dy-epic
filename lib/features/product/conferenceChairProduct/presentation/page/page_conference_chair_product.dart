import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/features/product/conferenceChairProduct/presentation/cubit/cubit_conference_chair_product.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageConferenceChairProduct extends StatelessWidget {
  const PageConferenceChairProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitConferenceChairProduct>(
        create: (BuildContext context) =>
            getIt<CubitConferenceChairProduct>()..load(),
        child: GlobalScaffold(
            appBarContext: context, body: const SizedBox.shrink()));
  }
}
