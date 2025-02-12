import 'dart:io';

import 'package:app_flutter_produkt_bestellen/core/firebase/firebase_configuration.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: Icon(
              Icons.copyright,
              size: 30,
            ),
          ),
          FittedBox(
            child: Text(
              'Christopher Michael Haas',
              textAlign: TextAlign.center,
              style: AppTextStyle.bold18,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SelectableText(
                'App-Id: ${FirebaseConfiguration.appToken}',
                textAlign: TextAlign.center,
                style: AppTextStyle.bold14,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          if (Platform.isIOS)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SelectableText(
                  'Token: ${FirebaseConfiguration.firebaseToken}',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bold14,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
