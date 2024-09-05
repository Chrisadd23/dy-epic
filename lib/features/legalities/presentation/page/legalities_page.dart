import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:flutter/material.dart';

class LegalitiesPage extends StatelessWidget {
  const LegalitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBarContext: context,
      body: const SizedBox.shrink(),
      showMenuBar: true,
    );
  }
}
