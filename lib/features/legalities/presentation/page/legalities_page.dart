import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:flutter/material.dart';

class LegalitiesPage extends StatelessWidget {
  const LegalitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: const _AppRights(),
      showMenuBar: true,
    );
  }
}

class _AppRights extends StatelessWidget {
  const _AppRights();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.copyright,
            size: 30,
          ),
          Text(
            'Christopher Michael Haas',
            textAlign: TextAlign.center,
            style: AppTextStyle.bold22,
          ),
        ],
      ),
    );
  }
}
